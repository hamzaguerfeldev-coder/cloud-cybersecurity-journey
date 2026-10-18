<div align="center">

# ☁️ Cloud & Cybersecurity Engineering Journey

**A public, hands-on path from Linux fundamentals to cloud-native infrastructure and security.**

![Status](https://img.shields.io/badge/status-in%20progress-2C9FD9?style=flat-square)
![Roadmap](https://img.shields.io/badge/roadmap-24%20modules-1f3a5f?style=flat-square)
![Focus](https://img.shields.io/badge/focus-Cloud%20%7C%20DevOps%20%7C%20DevSecOps-0d1117?style=flat-square)

[Progress](#-progress) · [Roadmap](./ROADMAP.md) · [Flagship project](#-flagship-project) · [Stack](#-technology-stack) · [Certifications](#-certification-plan)

</div>

---

## 📖 Overview

This repository contains the labs, scripts, notes and projects I build while training for **Cloud Engineering, DevOps, DevSecOps and Platform Engineering** roles.

- **Method:** Learn → Build → Break → Debug → Document → Commit
- **Principle:** certifications follow practical experience, not the other way around
- **Proof of work:** every module produces something tangible (lab, script, configuration, troubleshooting notes), committed regularly

---

## 📊 Progress

### Phase 0 — Foundations

| ID | Topic | Status | Covers |
|---|---|---|---|
| F1 | [Linux Basics](./01-linux-basics) | ✅ Completed | Filesystem, commands, `find`/`grep`, pipes, redirection |
| F2 | [Permissions & Processes](./02-permissions-processes) | ✅ Completed | `chmod`/`chown`/`chgrp`, ownership, `ps`/`top`/`kill`, signals |
| F3 | [Shell Scripting](./03-shell-scripting) | ✅ Completed | Variables, conditions, loops, arrays, exit codes, automation |
| F4 | [Networking](./04-networking) | ✅ Completed | IP, CIDR, DNS, TCP/UDP, SSH, HTTP/HTTPS, firewalls |
| F5 | Git & Advanced Git | 🔄 Finishing | Branching, merging, rebasing, pull requests |

> **Now:** wrapping up Phase 0 and starting **M6 — Containerization (Docker)**, pulled forward to begin the flagship project early.

### Skills practiced so far

| Area | What I did | Evidence |
|---|---|---|
| Linux administration | Filesystem work, search, pipes, redirection, command substitution | [01-linux-basics](./01-linux-basics) |
| Access & processes | Symbolic and octal permissions, ownership, background processes | [02-permissions-processes](./02-permissions-processes) |
| Automation | Bash scripts with arguments, conditionals, loops, arrays, file checks. Includes a **Linux system audit script** (system information and basic security-oriented checks) | [03-shell-scripting](./03-shell-scripting) |
| Networking | Addressing and subnetting, DNS, transport protocols, SSH, HTTP/HTTPS, firewalls | [04-networking](./04-networking) |

---

## 🗺️ Roadmap at a glance

| Track | Modules | Themes |
|---|---|---|
| **Year 1:** Secure & administer infrastructure | M1 to M8 | IAM, cyber defense, SOC/SIEM, network security, cloud infrastructure, containers, CI/CD, Linux server administration |
| **Year 2:** Advanced cloud, cloud-native & resilience | M9 to M18 | Zero Trust, disaster recovery, DevSecOps, CEH prep, advanced Kubernetes, service mesh, GitOps, SRE, AI security |
| **Bonus:** market skills | M19 to M24 | FinOps, multi-cloud, observability, platform engineering, system design, AIOps |

📄 Full module list with focus areas: **[ROADMAP.md](./ROADMAP.md)**

---

## 🚀 Flagship Project

One application, improved module after module, instead of disconnected tutorial projects.

```mermaid
flowchart LR
  A[Application] --> B[Docker] --> C[AWS] --> D[Terraform] --> E[CI/CD] --> F[Kubernetes] --> G[Security] --> H[Observability]
  classDef wip fill:#9e6a03,stroke:#d29922,color:#fff
  classDef next fill:#21262d,stroke:#30363d,color:#8b949e
  class B wip
  class A,C,D,E,F,G,H next
```

🟨 In progress · ⬛ Planned

---

## 🧰 Technology Stack

| Category | Used so far | Target |
|---|---|---|
| Operating systems | [Linux](https://www.kernel.org/), [Ubuntu](https://ubuntu.com/) | |
| Scripting | [Bash](https://www.gnu.org/software/bash/) | [Python](https://www.python.org/) |
| Version control | [Git](https://git-scm.com/), [GitHub](https://github.com/) | |
| Containers | *In progress:* [Docker](https://www.docker.com/) | [Kubernetes](https://kubernetes.io/), [Helm](https://helm.sh/) |
| Cloud | | [AWS](https://aws.amazon.com/), [Azure](https://azure.microsoft.com/), [GCP](https://cloud.google.com/) |
| Infrastructure as Code | | [Terraform](https://developer.hashicorp.com/terraform), [Ansible](https://www.ansible.com/) |
| CI/CD & GitOps | | [GitHub Actions](https://github.com/features/actions), [Jenkins](https://www.jenkins.io/), [Argo CD](https://argo-cd.readthedocs.io/), [Flux](https://fluxcd.io/) |
| Security | | [Wazuh](https://wazuh.com/), [Suricata](https://suricata.io/), [Vault](https://developer.hashicorp.com/vault), [Trivy](https://github.com/aquasecurity/trivy), [Semgrep](https://semgrep.dev/), [OWASP ZAP](https://www.zaproxy.org/) |
| Monitoring | | [Prometheus](https://prometheus.io/), [Grafana](https://grafana.com/), [OpenTelemetry](https://opentelemetry.io/) |
| Platform engineering | | [Backstage](https://backstage.io/), [Crossplane](https://www.crossplane.io/) |
| Databases | | [PostgreSQL](https://www.postgresql.org/), [MySQL](https://www.mysql.com/) |

---

## 🎓 Certification Plan

Certifications are timed **after** the related practical module. The sequence may change as the roadmap develops.

| After | Certification |
|---|---|
| Phase 0 | AWS Cloud Practitioner |
| M4 | CCNA Security *(verify the current Cisco track)* |
| M8 | HashiCorp Terraform Associate · AWS Solutions Architect Associate |
| M13 | CEH |
| M14 | CKA |
| M15 | CKS |
| M16 | GitOps Associate |
| M18 | NVIDIA AI Infrastructure Associate |

---

## 📁 Repository Structure

```text
cloud-cybersecurity-journey/
├── 01-linux-basics/
├── 02-permissions-processes/
├── 03-shell-scripting/
├── 04-networking/
├── 05-git-github/          # in progress
├── ROADMAP.md
└── README.md
```

**Conventions:** Phase 0 folders use numeric prefixes (`01-`…). Roadmap modules use `mNN-` prefixes (for example `m06-containers/`). Each folder has a `README.md` with objectives, commands used and issues solved, plus `labs/` and `scripts/` where relevant.

> 🔒 All security experiments are performed in controlled lab environments that I own.

---

## 👤 Author

**Hamza** · [GitHub](https://github.com/hamzaguerfeldev-coder) · [LinkedIn](https://www.linkedin.com/in/[your-profile])
