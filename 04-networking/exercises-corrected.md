# Networking — Exercises & Solutions

Level 1 hands-on exercises, with solutions and explanations for each.

---

## Exercise 1 — CIDR

**Task:** calculate how many usable addresses each CIDR range contains:
`10.0.0.0/16`, `192.168.1.0/28`, `172.16.0.0/20`.

**Method:**
```
Total addresses   = 2^(32 - prefix)
Usable addresses  = Total addresses - 2   (network address + broadcast address are reserved)
```

**Solution:**

| CIDR | Host bits | Total addresses | Usable addresses |
|---|---|---|---|
| `10.0.0.0/16` | 32-16 = 16 | 2^16 = 65536 | 65534 |
| `192.168.1.0/28` | 32-28 = 4 | 2^4 = 16 | 14 |
| `172.16.0.0/20` | 32-20 = 12 | 2^12 = 4096 | 4094 |

**Key takeaway:** always subtract 2 from the raw total — one address is reserved to identify the network itself, and the last one is reserved for broadcast.

---

## Exercise 2 — DNS

**Task:**
```bash
dig google.com
dig +short cloudflare.com
dig MX gmail.com
```

**What to observe:**
- `dig google.com` → full output, including the `ANSWER SECTION` with the A record (IPv4 address), the query time, and which server answered (`SERVER:` line at the bottom — usually your local resolver, e.g. `127.0.0.53` or your ISP's DNS).
- `dig +short cloudflare.com` → same lookup, but only prints the resulting IP address(es), no extra metadata — useful in scripts.
- `dig MX gmail.com` → returns the **mail servers** responsible for the domain, each with a priority number (lower number = higher priority).

**Solution notes (example):**
```
google.com has A record(s) pointing to one or more IPv4 addresses.
cloudflare.com (short form) returns just the IP, e.g. 104.16.132.229
gmail.com MX records point to Google's mail servers (e.g. gmail-smtp-in.l.google.com), each with a priority value.
```

---

## Exercise 3 — Ports

**Task:**
```bash
ss -tulpn
```

**How to read the output:**
- `-t` = TCP, `-u` = UDP, `-l` = listening sockets only, `-p` = show the process name, `-n` = show numeric ports instead of service names

**Solution (example interpretation):**
```
Local Address:Port   Process        Service
0.0.0.0:22            sshd           SSH
127.0.0.1:631         cupsd          Printing (CUPS)
0.0.0.0:53            systemd-resolve DNS resolver
```
Cross-reference unfamiliar ports with `/etc/services` or a quick search — every open port should be explainable; an unexpected open port is a potential security concern.

---

## Exercise 4 — SSH

**Task:**
```bash
ssh-keygen -t ed25519 -f ~/.ssh/test_key
cat ~/.ssh/test_key.pub
```

**Explanation:**
- This generates a key **pair**: `test_key` (private) and `test_key.pub` (public).
- The **private key** stays on your machine, never shared — it's what proves your identity when connecting.
- The **public key** is the one copied to a remote server (`~/.ssh/authorized_keys`); it can be shared freely, as it's mathematically useless to an attacker without the matching private key.

**Why never share the private key:** whoever holds the private key can authenticate as you, on every server where the matching public key was installed — sharing it is equivalent to sharing a master password with no way to know who else might have a copy.

---

## Exercise 5 — Firewall

**Task:**
```bash
sudo ufw status
sudo ufw allow 8080/tcp
sudo ufw status numbered
sudo ufw delete <rule_number>
```

**What each command does:**
- `ufw status` → shows whether the firewall is active and lists current rules.
- `ufw allow 8080/tcp` → adds a rule allowing incoming TCP traffic on port 8080.
- `ufw status numbered` → same as `status`, but each rule gets a number, needed to delete it precisely.
- `ufw delete <number>` → removes the rule at that exact position.

**Good practice:** always run `status numbered` right before a `delete`, since rule numbers shift once a rule is removed.

---

## Exercise 6 — HTTP

**Task:**
```bash
curl -I https://www.google.com
curl -I http://neverssl.com
```

**What to compare:**
- The HTTPS request shows a `200 OK` (or similar) status, plus headers like `strict-transport-security` (HSTS, forces HTTPS on future visits) — not present on a plain HTTP site.
- The HTTP request (neverssl.com, built specifically to stay unencrypted) won't have TLS-related headers at all, and the connection itself isn't encrypted — anyone on the network path could read the exchanged data.

**Key takeaway:** `-I` fetches headers only (no body), a fast way to check a site's status, server type, and security headers without downloading the full page.

---

## Exercise 7 — Gateway & DHCP (bonus)

**Task:**
```bash
ip route show default
ip addr show
```

**What to observe:**
- `ip route show default` → shows your default gateway, e.g. `default via 192.168.1.1 dev wlan0`.
- `ip addr show` → shows your current IP address and interface.

**How to confirm DHCP assignment:** if your IP falls within your router's typical private range (e.g. `192.168.1.x`, `10.0.0.x`) and you never configured it manually, it was very likely assigned automatically by DHCP — you can also check `/var/lib/dhcp/` or `journalctl -u NetworkManager` for a DHCP lease confirmation.
