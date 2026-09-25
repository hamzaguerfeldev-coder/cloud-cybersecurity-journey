#!/usr/bin/env bash

# ============================================
# Linux System Audit Script
# ============================================

critical=0


# ============================================
# 1. SYSTEM INFORMATION
# ============================================

echo "========================================"
echo "1. SYSTEM INFORMATION"
echo "========================================"

echo "Hostname:      $(hostname)"
echo "Current user:  $(whoami)"
echo "Uptime:        $(uptime -p)"
echo "OS:            $(. /etc/os-release && echo "$PRETTY_NAME")"
echo "Kernel:        $(uname -r)"


# ============================================
# 2. DISK AUDIT
# ============================================

echo
echo "========================================"
echo "2. DISK AUDIT"
echo "========================================"

printf "%-25s %-8s %-8s %-10s %-8s %s\n" \
    "Filesystem" "Size" "Used" "Available" "Usage%" "Mounted on"

# Process substitution keeps the while loop in the
# current shell so critical=1 persists.
while read -r filesystem size used available usage mount
do
    printf "%-25s %-8s %-8s %-10s %-8s %s\n" \
        "$filesystem" \
        "$size" \
        "$used" \
        "$available" \
        "$usage" \
        "$mount"

    usage_num="${usage%\%}"

    if [ "$usage_num" -gt 80 ]; then
        echo "WARNING: $mount is ${usage_num}% full"
        critical=1
    fi

done < <(
    df -hP | awk '
        NR > 1 {
            print $1, $2, $3, $4, $5, $6
        }
    '
)


# ============================================
# 3. MEMORY
# ============================================

echo
echo "========================================"
echo "3. MEMORY"
echo "========================================"

total_kb=$(awk '/^MemTotal:/ {print $2}' /proc/meminfo)
available_kb=$(awk '/^MemAvailable:/ {print $2}' /proc/meminfo)

used_kb=$((total_kb - available_kb))

memory_pct=$((used_kb * 100 / total_kb))

total_gb=$(awk "BEGIN {printf \"%.2f\", $total_kb/1024/1024}")
used_gb=$(awk "BEGIN {printf \"%.2f\", $used_kb/1024/1024}")
available_gb=$(awk "BEGIN {printf \"%.2f\", $available_kb/1024/1024}")

echo "Total RAM:     ${total_gb} GB"
echo "Used RAM:      ${used_gb} GB"
echo "Available RAM: ${available_gb} GB"
echo "Usage:         ${memory_pct}%"

if [ "$memory_pct" -gt 80 ]; then
    echo "WARNING: Memory usage above 80%"
    critical=1
else
    echo "OK: Memory usage below 80%"
fi


# ============================================
# 4. FAILED SERVICES
# ============================================

echo
echo "========================================"
echo "4. FAILED SERVICES"
echo "========================================"

failed_services=$(systemctl --failed --no-legend --plain 2>/dev/null)

if [ -z "$failed_services" ]; then
    echo "OK: No failed services"
else
    echo "WARNING: Failed services detected"
    echo "$failed_services"
    critical=1
fi


# ============================================
# 5. SSH CONFIGURATION
# ============================================

echo
echo "========================================"
echo "5. SSH CONFIGURATION"
echo "========================================"

if command -v sshd >/dev/null 2>&1
then
    password_auth=$(
        sshd -T 2>/dev/null |
        awk '$1 == "passwordauthentication" {print $2; exit}'
    )

    case "$password_auth" in

        yes)
            echo "SSH Password Authentication: ENABLED"
            ;;

        no)
            echo "SSH Password Authentication: DISABLED"
            ;;

        *)
            echo "SSH Password Authentication: UNKNOWN"
            ;;

    esac
else
    echo "SSH Password Authentication: UNKNOWN (sshd not installed)"
fi


# ============================================
# 6. FAILED SSH AUTHENTICATION
# ============================================

echo
echo "========================================"
echo "6. FAILED SSH AUTHENTICATION"
echo "========================================"

if command -v journalctl >/dev/null 2>&1
then

    failed_ssh=$(
        journalctl \
            --since "24 hours ago" \
            --no-pager \
            -q 2>/dev/null |
        grep -Ei \
            'sshd.*(Failed password|authentication failure|Invalid user)' |
        wc -l
    )

    echo "Failed SSH authentication attempts (last 24h): $failed_ssh"

elif [ -r /var/log/auth.log ]
then

    failed_ssh=$(
        grep -Ei \
            'sshd.*(Failed password|authentication failure|Invalid user)' \
            /var/log/auth.log 2>/dev/null |
        wc -l
    )

    echo "Failed SSH authentication attempts (current auth.log): $failed_ssh"

elif [ -r /var/log/secure ]
then

    failed_ssh=$(
        grep -Ei \
            'sshd.*(Failed password|authentication failure|Invalid user)' \
            /var/log/secure 2>/dev/null |
        wc -l
    )

    echo "Failed SSH authentication attempts (current secure log): $failed_ssh"

else

    echo "Failed SSH authentication attempts: UNKNOWN"

fi


# ============================================
# 7. TOP PROCESSES
# ============================================

echo
echo "========================================"
echo "7. TOP PROCESSES"
echo "========================================"

echo
echo "--- Top 5 Processes by CPU ---"

ps -eo pid,user,comm,%cpu,%mem --sort=-%cpu | head -n 6


echo
echo "--- Top 5 Processes by Memory ---"

ps -eo pid,user,comm,%cpu,%mem --sort=-%mem | head -n 6


# ============================================
# 8. EXIT STATUS
# ============================================

echo
echo "========================================"
echo "8. EXIT STATUS"
echo "========================================"

if [ "$critical" -eq 0 ]
then
    echo "System audit completed: OK"
    exit 0
else
    echo "System audit completed: CRITICAL WARNINGS DETECTED"
    exit 1
fi

