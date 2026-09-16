# ☁️ Cloud & Cybersecurity Engineering Journey  
   
&gt; Intensive self-training path toward a **Cloud Engineer / DevOps / DevSecOps / Platform Engineer** role, publicly documented with real hands-on labs, code, and concrete proof of skills.  
   
**Pace:** 20h/week | **Estimated duration:** 12-15 months | **Method:** theory → hands-on lab → documentation → commit  
   
---  
   
## 🎯 Objective  
   
Become job-ready for a Cloud/DevOps/DevSecOps role by merging two tracks: a solid **security** foundation (IAM, cyber defense, SOC, CCNA, CEH, Zero Trust) and modern **cloud-native** mastery (advanced Kubernetes, GitOps, Service Mesh, SRE) — both expected together in the 2026 market.  
   
**Portfolio principle:** every module ships a real project (1–2 weeks max, fully working, documented with architecture diagram + evidence + problems-solved). One **flagship application** grows across the journey — deployed in Module 5, containerized in 6, pipelined in 7, secured in 9–12, GitOps-managed in 16, SRE-monitored in 17. Recruiters see one deep, evolving system, not fragments.  
   
---  
   
## 📊 Progress  
   
### Phase 0 — Linux & Networking Foundations  
- [x] Basic commands (navigation, files, search) → [`01-linux-basics/`](./01-linux-basics)  
- [x] Permissions & ownership (`chmod`, `chown`, `chgrp`) → [`02-permissions-processes/`](./02-permissions-processes)  
- [x] Process management (`ps`, `top`, `kill`) → [`02-permissions-processes/`](./02-permissions-processes)  
- [x] Shell scripting (variables, conditionals, loops) → [`03-shell-scripting/`](./03-shell-scripting)  
- [ ] Networking fundamentals (IP/CIDR, DNS, TCP/UDP, SSH, firewalls, HTTP/HTTPS, REST APIs, load balancing, reverse proxy) → `04-networking/` **(in progress — theory phase)**  
- [ ] Advanced Git & GitHub (branches, merge, rebase, pull requests) → practiced via branch-per-lab habit  
- [ ] **Running habit:** Python fundamentals — 30 min/day in parallel (scripting, automation, boto3 later)  
   
**Phase 0 project:** *Hardened home server* — VM with static IP, SSH key-only auth (passwords disabled), ufw rules, cron backup script, custom systemd service. Full write-up with commands + outputs.  
   
### Year 1 — Securing and Administering Infrastructures  
- [ ] Module 1 — Access Control & Identity Management (IAM)  
  - 🛠️ *Secure AWS account baseline*: least-privilege roles, MFA enforced, CloudTrail enabled, password policy — documented as an onboarding runbook  
- [ ] Module 2 — Cyber Defense: Systems & Networks  
  - 🛠️ *Detection lab*: Wazuh/Suricata on a VM; run nmap scans + brute-force attempts against it; capture and explain the alerts  
- [ ] Module 3 — Advanced Operational Security (SOC, SIEM)  
  - 🛠️ *Mini SOC*: central log collection + dashboards; simulate SSH brute-force; write full incident timeline (detect → triage → contain → report)  
- [ ] Module 4 — CCNA Security (ACLs, VPN, firewalls)  
  - 🛠️ *Segmented network lab* (Packet Tracer/GNS3): VLANs, inter-VLAN ACLs, site-to-site VPN between two sites, firewall rule set  
- [ ] Module 5 — Advanced Cloud Infrastructure (HA, Terraform, SQL basics + managed databases)  
  - 🛠️ 🚩 **Flagship begins**: 2-tier architecture on AWS — VPC, public/private subnets, ALB, EC2, RDS — 100% Terraform, multi-AZ  
- [ ] Module 6 — Containerization & Orchestration (Docker, Kubernetes, Helm)  
  - 🛠️ Containerize the flagship app (multi-container: app + DB), deploy on local K8s with Helm, ingress, persistent volumes  
- [ ] Module 7 — Automation & CI/CD (Ansible, GitHub Actions, Jenkins)  
  - 🛠️ GitHub Actions pipeline: lint → test → build → push → deploy to K8s on every commit + Ansible config playbooks  
- [ ] Module 8 — Linux Server Administration (nginx, basic monitoring)  
  - 🛠️ Hardened VPS: nginx reverse proxy + real TLS (Let's Encrypt), systemd units, Prometheus + Grafana, backup/restore drill  
- [ ] **Capstone Project** — flagship app fully automated from `git push` to production, documented with architecture diagram — the primary interview piece  
   
&gt; 💡 **Job-hunting note:** after Module 8 + Cloud Practitioner + Terraform Associate → start applying for junior Cloud/DevOps roles. Modules 9-24 continue in parallel.  
   
### Year 2 — Advanced Cloud, Cloud-Native & Resilience  
- [ ] Module 9 — Advanced Cloud Security Architecture (Zero Trust, Vault)  
  - 🛠️ Vault on K8s: flagship app pulls DB credentials from Vault with auto-rotation — zero secrets in git or env vars, provable  
- [ ] Module 10 — Data Center Project (redundancy, disaster recovery)  
  - 🛠️ Multi-AZ failover drill: simulate losing an AZ/database, measure real RTO/RPO, document the recovery runbook  
- [ ] Module 11 — Distributed Cloud Storage & Data Resilience  
  - 🛠️ S3 versioning + lifecycle + cross-region replication, Velero cluster backups, tested restore (untested backup = no backup)  
- [ ] Module 12 — DevSecOps (SAST, DAST, vulnerability scanning)  
  - 🛠️ Security gates in CI/CD: Semgrep, Trivy, dependency scanning, ZAP — pipeline fails on critical findings; fix real findings in own code  
- [ ] Module 13 — CEH Certification Prep (ethical hacking)  
  - 🛠️ Pentest a vulnerable VM (Metasploitable/DVWA) in isolated network: recon → exploit → post-exploitation → professional pentest report  
- [ ] Module 14 — Advanced Kubernetes (HPA, VPA, Operators, Persistent Volumes)  
  - 🛠️ Production-grade flagship: HPA, resource quotas, NetworkPolicies, PodDisruptionBudgets, cluster upgrade drill  
- [ ] Module 15 — Service Mesh & Policy Enforcement (Istio/Linkerd, OPA Gatekeeper)  
  - 🛠️ mTLS between all services, canary deployment with traffic shifting, Gatekeeper blocking non-compliant pods  
- [ ] Module 16 — GitOps (ArgoCD, FluxCD, multi-cluster)  
  - 🛠️ ArgoCD: dev/staging/prod from one repo, app-of-apps pattern, rollback demo  
- [ ] Module 17 — Site Reliability Engineering  
  - 🛠️ SLOs for the flagship app, SLIs in Grafana, game day (kill pods/nodes), postmortem write-up  
- [ ] Module 18 — AI Security & AI Infrastructure  
  - 🛠️ Local LLM (Ollama) on K8s, small RAG app with vector DB, prompt-injection defenses implemented + tested  
- [ ] Module 19 — FinOps / Cloud Cost Optimization  
  - 🛠️ Cost audit of everything built: tagging strategy, budgets + alerts, right-sizing report, estimated savings  
- [ ] Module 20 — Multi-cloud (Azure / GCP)  
  - 🛠️ Port one component to GCP Cloud Run + Azure; write the IAM/networking comparison doc  
- [ ] Module 21 — Advanced Observability (Prometheus, Grafana, OpenTelemetry)  
  - 🛠️ Full OTel instrumentation: traces + metrics + logs in Grafana, alert rules tied to Module 17 SLOs  
- [ ] Module 22 — Platform Engineering (Backstage, Crossplane, IDPs)  
  - 🛠️ Backstage "golden path" template: one click scaffolds a new service with CI/CD + security scanning pre-wired  
- [ ] Module 23 — System Design for Infrastructure  
  - 🛠️ Infrastructure design doc: scalable system (caching, CDN, queue, DB scaling) with trade-off analysis — interview style  
- [ ] Module 24 — AIOps  
  - 🛠️ AI-assisted triage agent: reads alerts, correlates them (MCP), suggests remediation, accuracy measured  
   
---  
   
## 🎓 Certification Roadmap  
   
| Stage | Certification |  
|---|---|  
| After Phase 0 | AWS Cloud Practitioner (vocabulary builder — 3-4 weeks prep, don't over-study) |  
| After Module 5 | AWS Solutions Architect Associate (carries real weight — only after building infra) |  
| After Module 8 | HashiCorp Terraform Associate |  
| After Module 13 | CCNA Security / CEH |  
| After Module 14 | CKA (Certified Kubernetes Administrator) |  
| After Module 15 | CKS (Kubernetes Security) |  
| After Module 16 | GitOps Associate |  
| After Module 18 | NVIDIA AI Infrastructure Associate |  
   
&gt; Certs follow practice, never the reverse. A cert backed by projects is proof; without them it's decoration.  
   
---  
   
## 🛠️ Target Tech Stack  
   
| Category | Tools |  
|---|---|  
| Cloud | AWS (primary), Azure, GCP (fundamentals) |  
| Scripting | **Python**, Bash |  
| IaC | Terraform, Ansible |  
| Containers | Docker, Kubernetes, Helm |  
| Advanced Cloud-Native | Istio, Linkerd, OPA Gatekeeper, ArgoCD, FluxCD |  
| CI/CD | GitHub Actions, Jenkins |  
| Security | Vault, Suricata, Wazuh, Trivy, Semgrep |  
| Monitoring & SRE | Prometheus, Grafana, OpenTelemetry |  
| Databases | PostgreSQL/MySQL basics, RDS |  
| Networking | VPC, VPN, CCNA basics, DNS, REST APIs, Reverse Proxy |  
| Platform Engineering | Backstage, Crossplane |  
   
---  
   
## 📁 Repo Structure  
