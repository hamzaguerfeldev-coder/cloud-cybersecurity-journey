# 04 — Networking

**Phase 0 · Linux & Networking Foundations**

Networking knowledge for a Cloud/DevOps Engineer, organized into 5 levels —
from absolute fundamentals to advanced interview-level concepts. Level 1 is
practiced now with hands-on exercises; Levels 2-5 are revisited in context
later in the roadmap (Modules 5, 6, 9, 14, 15, 23), with real hands-on labs
at that point rather than theory in a vacuum.

📖 **Theory notes:** → [networking-theory-notes-en.md](./networking-theory-notes-en.md)
🧪 **Exercises + solutions:** → [exercises-corrected.md](./exercises-corrected.md)

---

## 🟢 Level 1 — Core Fundamentals (practiced now)

- [x] Network basics (LAN vs WAN, hub vs switch vs router, MAC vs IP)
- [x] DHCP (automatic IP assignment, DORA process)
- [x] CIDR notation & subnetting
- [x] DNS (resolution process, 4 DNS server types, record types)
- [x] TCP vs UDP + the TCP 3-way handshake
- [x] Common ports (22, 53, 80, 443, 3306, 5432, 6379, 8080)
- [x] SSH (connection, key pairs, SSH config file)
- [x] HTTP/HTTPS (verbs, status codes)
- [x] TLS/SSL (certificates, concept)
- [x] Firewalls (concept, whitelist vs blacklist, `ufw`)
- [x] Gateway (default gateway, Internet Gateway vs NAT Gateway)
- [x] NAT / PAT
- [ ] Hands-on exercises — see table below

### Exercises

| # | Exercise | Goal | File |
|---|---|---|---|
| 1 | CIDR | Calculate usable address counts for `/16`, `/28`, `/20` | [exercises-corrected.md#exercise-1--cidr](./exercises-corrected.md#exercise-1--cidr) |
| 2 | DNS | `dig` various records, identify responding server | [exercises-corrected.md#exercise-2--dns](./exercises-corrected.md#exercise-2--dns) |
| 3 | Ports | `ss -tulpn`, identify each listening service | [exercises-corrected.md#exercise-3--ports](./exercises-corrected.md#exercise-3--ports) |
| 4 | SSH | Generate a key pair, explain private vs public key | [exercises-corrected.md#exercise-4--ssh](./exercises-corrected.md#exercise-4--ssh) |
| 5 | Firewall | `ufw allow/delete`, document each command | [exercises-corrected.md#exercise-5--firewall](./exercises-corrected.md#exercise-5--firewall) |
| 6 | HTTP | `curl -I` on HTTP vs HTTPS site, compare headers | [exercises-corrected.md#exercise-6--http](./exercises-corrected.md#exercise-6--http) |
| 7 | Gateway & DHCP (bonus) | Identify current gateway and DHCP-assigned IP | [exercises-corrected.md#exercise-7--gateway--dhcp-bonus](./exercises-corrected.md#exercise-7--gateway--dhcp-bonus) |

---

## 🟡 Level 2 — Cloud Architecture *(revisited at Module 5)*

- [ ] VPC (Virtual Private Cloud)
- [ ] Public vs private subnets
- [ ] Internet Gateway
- [ ] NAT Gateway
- [ ] Route Tables
- [ ] Security Groups vs NACLs (stateful vs stateless)
- [ ] VPC Peering
- [ ] Load Balancers (ALB vs NLB)
- [ ] CDN (CloudFront)
- [ ] Elastic IP

## 🟠 Level 3 — Network Security *(revisited at Modules 2, 4, 9)*

- [ ] VPN (site-to-site, OpenVPN/WireGuard)
- [ ] Zero Trust networking
- [ ] IDS/IPS (Suricata)
- [ ] Network segmentation / 3-tier architecture
- [ ] TLS in depth, mutual TLS (mTLS)
- [ ] ACLs on routers (CCNA concepts)

## 🔴 Level 4 — Kubernetes / Cloud-Native Networking *(revisited at Modules 6, 14, 15)*

- [ ] Docker networking (bridge, overlay, port mapping)
- [ ] CNI (Container Network Interface)
- [ ] Kubernetes Services (ClusterIP, NodePort, LoadBalancer)
- [ ] Ingress
- [ ] Internal DNS (CoreDNS)
- [ ] Network Policies
- [ ] Service Mesh (Istio/Linkerd), automatic mTLS

## 🔵 Level 5 — Advanced / Interview Concepts *(woven in progressively)*

- [ ] Reverse Proxy vs Load Balancer
- [ ] API Gateway
- [ ] Rate Limiting
- [ ] Latency vs Bandwidth
- [ ] What happens when you type a URL (full request lifecycle)

---

## 🛠️ Next: Closing Mini-Project

Once the 7 exercises above are done, this module closes with a small
**network diagnostic script** (`network-diagnostic.sh`) that ties
DNS resolution, HTTP/HTTPS checks, open ports, firewall status, and
CIDR calculation into one reusable tool — combining the pieces instead
of leaving them as separate, disconnected exercises.

---

## 💡 What this module is teaching me

Networking is the layer underneath everything else in cloud/DevOps — VPC design,
Kubernetes troubleshooting, and security all come back to these fundamentals.
Level 1 is the non-negotiable base; Levels 2-5 are learned with real
infrastructure in front of me, not in the abstract.
