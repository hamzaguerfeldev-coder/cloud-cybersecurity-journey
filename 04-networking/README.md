# 04 — Networking

**Phase 0 · Linux & Networking Foundations**

Networking knowledge for a Cloud/DevOps Engineer, organized into 5 levels —
from absolute fundamentals to advanced interview-level concepts. Level 1 is
practiced now with hands-on exercises; Levels 2-5 are revisited in context
later in the roadmap (Modules 5, 6, 9, 14, 15, 23), with real hands-on labs
at that point rather than theory in a vacuum.

---

## 🟢 Level 1 — Core Fundamentals (practiced now)

- [ ] IP addressing (private vs public, the 3 private ranges)
- [ ] CIDR notation & subnetting
- [ ] DNS (resolution process, record types: A, AAAA, CNAME, MX, NS, TXT)
- [ ] TCP vs UDP + the TCP 3-way handshake
- [ ] Common ports (22, 53, 80, 443, 3306, 5432, 6379, 8080)
- [ ] SSH (connection, key pairs, SSH config file)
- [ ] HTTP/HTTPS (verbs, status codes)
- [ ] TLS/SSL (certificates, concept)
- [ ] Firewalls (concept, `ufw`)

**Hands-on exercises:** → [`exercises/`](./exercises)

| # | Exercise | Goal | Notes |
|---|---|---|---|
| 1 | CIDR | Calculate address counts for `/16`, `/28`, `/20` | [cidr.md](./exercises/cidr.md) |
| 2 | DNS | `dig` various records, identify responding server | [dns-notes.md](./exercises/dns-notes.md) |
| 3 | Ports | `ss -tulpn`, identify each listening service | [ports-notes.md](./exercises/ports-notes.md) |
| 4 | SSH | Generate a key pair, explain private vs public key | [ssh-notes.md](./exercises/ssh-notes.md) |
| 5 | Firewall | `ufw allow/delete`, document each command | [firewall-notes.md](./exercises/firewall-notes.md) |
| 6 | HTTP | `curl -I` on HTTP vs HTTPS site, compare headers | [http-notes.md](./exercises/http-notes.md) |

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

## 💡 What this module is teaching me

Networking is the layer underneath everything else in cloud/DevOps — VPC design,
Kubernetes troubleshooting, and security all come back to these fundamentals.
Level 1 is the non-negotiable base; Levels 2-5 are learned with real
infrastructure in front of me, not in the abstract.
