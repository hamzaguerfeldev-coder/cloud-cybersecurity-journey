#!/usr/bin/env bash
# In this script we will try to verify some server utility like cpu, memory ...

# Function separator (visual divider between sections)
separator() {
    echo "************************************************"
}

# Print disk/system usage
sys_usage() {
    echo "This is your whole system usage"
    separator
    df -h
    separator
}

# Print memory information
mem_usage() {
    echo "Some memory information"
    separator
    free -h
    separator
}

# Quick system check (number of CPU cores)
sys_check() {
    echo "Quick system check"
    separator
    nproc
    # top is interactive by default, skipped here to keep the script non-interactive
    separator
}

# List running services
run_services() {
    echo "Some running services"
    separator
    systemctl list-units --type=service --state=running
    separator
}

# Show recent logs
logs() {
    echo "Some logs"
    separator
    journalctl -n 50
    separator
}

# Show listening ports
# Note: requires sudo, which means this script will prompt for a password
# when run interactively, and cannot run unattended (e.g. via cron) as-is.
ports() {
    echo "Some available ports"
    separator
    sudo ss -lunp
    separator
}

sys_usage
mem_usage
sys_check
run_services
logs
ports
