# ☁️ Cloud & Cybersecurity Engineering Journey

A hands-on self-training journey toward **Cloud Engineering, DevOps, DevSecOps, and Platform Engineering**.

The goal is simple:

**Learn → Build → Break → Debug → Document → Repeat**

This repository contains the labs, scripts, notes, experiments, and projects I build while progressing from Linux and networking fundamentals toward cloud-native infrastructure and security — following a structured **24-module roadmap**, detailed below.

---

## 🎯 Objective

Build practical, job-ready skills through continuous hands-on work in:
- Linux administration
- Networking
- Bash & Python automation
- Git & GitHub
- Cloud infrastructure
- Infrastructure as Code
- Containers & Kubernetes
- CI/CD
- Cloud security
- DevSecOps
- Observability & SRE
- Platform Engineering

**Learning principle:** certifications follow practical experience, not the other way around.

---

## 📊 Current Progress — Phase 0 (Foundations)

| Module | Status | Focus |
|---|---|---|
| [01 — Linux Basics](./01-linux-basics) | ✅ Completed | Filesystem, commands, search, pipes, redirection, Git |
| [02 — Permissions & Processes](./02-permissions-processes) | ✅ Completed | Permissions, ownership, processes, signals |
| [03 — Shell Scripting](./03-shell-scripting) | ✅ Completed | Bash variables, conditions, loops, arrays, automation |
| [04 — Networking](./04-networking) | 🟡 In Progress | IP, CIDR, DNS, TCP/UDP, SSH, HTTP/HTTPS, firewalls |
| 05 — Advanced Git & GitHub | 🔵 Planned | Branching, merging, rebasing, pull requests |

---

## 🗺️ Full Roadmap — 24 Modules

Once Phase 0 is complete, the journey continues through **24 structured modules**, merging a security-focused curriculum with modern cloud-native practices.

### Year 1 — Securing and Administering Infrastructures
| # | Module | Focus |
|---|---|---|
| 1 | Access Control & Identity Management (IAM) | Least privilege, identity federation |
| 2 | Cyber Defense: Systems & Networks | Hardening, IDS/IPS (Suricata) |
| 3 | Advanced Operational Security | SOC, SIEM (Wazuh) |
| 4 | CCNA Security | ACLs, VPN, firewalls |
| 5 | Advanced Cloud Infrastructure | High availability, Terraform, VPC |
| 6 | Containerization & Orchestration | Docker, Kubernetes, Helm |
| 7 | Automation & CI/CD | Ansible, GitHub Actions, Jenkins |
| 8 | Linux Server Administration | nginx, basic monitoring |

### Year 2 — Advanced Cloud, Cloud-Native & Resilience
| # | Module | Focus |
|---|---|---|
| 9 | Advanced Cloud Security Architecture | Zero Trust, Vault |
| 10 | Data Center Project | Redundancy, disaster recovery |
| 11 | Distributed Cloud Storage & Data Resilience | Replication, backup strategy |
| 12 | DevSecOps | SAST, DAST, Trivy, Semgrep, OWASP ZAP |
| 13 | CEH Certification Prep | Ethical hacking |
| 14 | Advanced Kubernetes | HPA, VPA, Operators, Persistent Volumes |
| 15 | Service Mesh & Policy Enforcement | Istio/Linkerd, OPA Gatekeeper |
| 16 | GitOps | ArgoCD, FluxCD, multi-cluster |
| 17 | Site Reliability Engineering | SLO/SLA/SLI, incident management, chaos engineering |
| 18 | AI Security & AI Infrastructure | Prompt injection, RAG, vector databases, MCP |

### Bonus Modules — 2026 Market-Relevant Skills
| # | Module | Focus |
|---|---|---|
| 19 | FinOps / Cloud Cost Optimization | Cost governance |
| 20 | Multi-Cloud | Azure, GCP, GCP Digital Leader |
| 21 | Advanced Observability | Prometheus, Grafana, OpenTelemetry |
| 22 | Platform Engineering | Backstage, Crossplane, Internal Developer Platforms |
| 23 | System Design for Infrastructure | Scalability, caching, CDN, load balancing, API Gateway |
| 24 | AIOps | AI-assisted debugging, alert triaging, automated remediation |

---

## 🛠️ Hands-On Work

### Linux Fundamentals
Practiced:
- Filesystem navigation
- File and directory management
- `find`
- `grep`
- Pipes and redirection
- Disk usage
- Command discovery
- Command substitution
- Git fundamentals

→ [Explore Linux Basics](./01-linux-basics)

### Permissions & Processes
Working with:
- `chmod`, `chown`, `chgrp`
- Symbolic and octal permissions
- `ps`, `top`, `kill`
- Background processes

→ [Explore Permissions & Processes](./02-permissions-processes)

### Bash Automation
Practiced:
- Variables
- Arguments
- Conditionals
- Loops
- Arrays
- Exit codes
- File and directory checks
- Command substitution
- System inspection
- Automation scripts

One of the current projects is a Linux system audit script that collects useful system information and performs basic security-oriented checks.

→ [Explore Shell Scripting](./03-shell-scripting)

### Networking *(in progress)*
→ [Explore Networking](./04-networking)

---

## 🚀 Flagship Project

A progressively evolving application infrastructure, built through the roadmap instead of disconnected tutorial projects:

```
Application
    ↓
Docker
    ↓
AWS Infrastructure
    ↓
Terraform
    ↓
CI/CD
    ↓
Kubernetes
    ↓
Security
    ↓
Observability
```

The objective is to keep improving the same system instead of creating disconnected tutorial projects.

---

## 🔐 Security & DevSecOps

Covered across Modules 1-4, 9, 12-13, 18:
- IAM and least privilege
- Network security
- Linux hardening
- Cloud security
- Secrets management
- Vulnerability scanning
- SAST / DAST
- Container security
- Kubernetes security
- Zero Trust concepts
- Security monitoring
- Incident response fundamentals

Potential tooling: Wazuh, Suricata, Vault, Trivy, Semgrep, OWASP ZAP

All security experiments will be performed in controlled lab environments.

---

## ☸️ Cloud-Native & Platform Engineering

Covered across Modules 6, 14-17, 21-22:
- Advanced Kubernetes
- Helm
- GitOps (ArgoCD, Flux)
- Service Mesh
- Open Policy Agent
- Prometheus, Grafana, OpenTelemetry
- SRE practices
- Platform Engineering (Backstage, Crossplane)

---

## 📈 Learning Method

Each major topic follows the same cycle:

```
Learn → Build → Break → Debug → Document → Commit → Improve
```

The focus is on understanding **why** something works rather than simply copying commands.

---

## 🧪 Project Philosophy

Whenever possible, each major module should produce something tangible:
- A working lab
- A script or automation tool
- Configuration files
- Documentation
- Troubleshooting notes
- Evidence of testing
- A clear explanation of what was learned

The goal is to build a portfolio based on **actual work and reproducible results**.

---

## 🎓 Certification Roadmap

Certifications are planned to support practical experience, timed after the relevant module is completed in practice.

| Stage | Certification / Area |
|---|---|
| After Phase 0 | AWS Cloud Practitioner |
| After Module 8 | Terraform Associate |
| After Module 8 | AWS Solutions Architect Associate |
| After Module 4 | CCNA Security |
| After Module 13 | CEH |
| After Module 14 | CKA |
| After Module 15 | CKS |
| After Module 16 | GitOps Associate |
| After Module 18 | NVIDIA AI Infrastructure Associate |

The exact certification sequence may change as the practical roadmap develops.

**Certifications should support the projects — not replace them.**

---

## 🧰 Target Technology Stack

| Category | Technologies |
|---|---|
| Cloud | AWS, Azure, GCP |
| Operating Systems | Linux |
| Scripting | Bash, Python |
| Version Control | Git, GitHub |
| Infrastructure as Code | Terraform, Ansible |
| Containers | Docker |
| Orchestration | Kubernetes, Helm |
| CI/CD | GitHub Actions, Jenkins |
| Security | Wazuh, Suricata, Vault, Trivy, Semgrep, OWASP ZAP |
| Networking | TCP/IP, DNS, SSH, HTTP/HTTPS, VPN, firewalls |
| Monitoring | Prometheus, Grafana, OpenTelemetry |
| GitOps | Argo CD, Flux |
| Platform Engineering | Backstage, Crossplane |
| Databases | PostgreSQL, MySQL, AWS RDS |

---

## 📁 Repository Structure

```
cloud-cybersecurity-journey/
│
├── 01-linux-basics/
│   ├── README.md
│   └── tp-linux-basics-corrected-en.md
│
├── 02-permissions-processes/
│   └── notes-English.md
│
├── 03-shell-scripting/
│   └── README.md
│
├── 04-networking/
│   └── README.md
│
└── README.md
```

The repository will grow progressively as new modules are completed.

---

## 📌 Current Focus

**Current stage: Networking Fundamentals**

I'm currently strengthening the fundamentals before moving deeper into cloud infrastructure.

Next major topic: 🌐 **Networking Fundamentals** → then **Module 1 (IAM)**

---

## 📫 Connect

- 💻 [GitHub](https://github.com/hamzaguerfeldev-coder)
- 🔗 LinkedIn — coming soon

**Build it. Break it. Understand it. Automate it.**
