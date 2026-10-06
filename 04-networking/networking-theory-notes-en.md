# Networking — Personal Theory Notes

Summary written after studying the essential networking concepts every DevOps/Cloud Engineer should know.

---

## 1. What is a Network

A network is a connection between multiple devices, either local (LAN) or wide-area (WAN).

- **LAN (Local Area Network)**: a local network, for example within a home or an office.
- **WAN (Wide Area Network)**: an extended network that connects several local networks together (the internet is the largest example).

In a LAN, devices are connected through a **switch** or a **hub**.

---

## 2. Hub, Switch, Router

- **Hub**: not intelligent enough. It doesn't know the target device, so it sends data to **all** devices on the network — wasting bandwidth and resources.
- **Switch**: smarter than a hub. It knows the exact target device's address — its **physical address**, also called **MAC address** — and sends data directly to it.
- **Router**: works like a switch, but communicates with the global network (the internet) using the **IP address**.

---

## 3. MAC Address vs IP Address

- **MAC Address**: a local address, unique to each device, physically assigned to the network card. It's written in hexadecimal (only characters `0-9` and `A-F`), for example: `3C:A9:F4:1B:22:E0`.
- **IP Address (Internet Protocol)**: a logical address used by the router to identify a device on a network, local or global.

---

## 4. Overview of a Network Communication

```
Device → IP → Packets → Ports → Protocols
```

- **Device**: for example, my laptop.
- **IP**: the address that identifies the destination.
- **Packets**: data isn't sent all at once — it's broken down into packets.
- **Ports**: every target IP can expose more than one port, and each port corresponds to a specific service.

| Port | Service |
|---|---|
| 22 | SSH |
| 80 | HTTP |
| 443 | HTTPS |
| 3306 | MySQL |

- **Protocols**: the rules that govern how data and packets are sent.

| Protocol | Role |
|---|---|
| HTTP / HTTPS | Web communication |
| TCP | Reliable transport |
| DNS | Converts domain names into IP addresses |
| SSH | Secure remote server access |

---

## 5. Configuring an IP Address

An IP address can be configured in two ways:
- **Manually**
- **Automatically**, via **DHCP** (Dynamic Host Configuration Protocol)

To verify that a destination is available and responding, the **`ping`** command is used.

---

## 6. TCP vs UDP

- **TCP (Transmission Control Protocol)**: a reliable protocol. Slower, but guarantees no data is lost — ideal for sending files and documents.
- **UDP (User Datagram Protocol)**: faster, but with no guarantee of full delivery. Suited to cases where losing a few packets isn't critical, such as video, live audio calls, or gaming.

---

## 7. HTTP, DNS, TLS/SSL, and HTTPS

- **HTTP** guarantees web communication between a browser and a server.
- My device is identified by its **MAC address**, and the network it belongs to by its **IP address** (obtained via DHCP).
- To send data to a server by name, **DNS (Domain Name System)** is used, which resolves that name into an IP address.
- Communication security is provided by **TLS** (Transport Layer Security — formerly called SSL, which is no longer used today). TLS secures an entire communication session (not just a single isolated call), for example during a login with credentials.

**HTTPS = HTTP + TLS** → secure data transfer.

---

## 8. VPN (Virtual Private Network)

A VPN lets an employee create a private, secure tunnel between their device and their company's network, in order to communicate and share data safely. Both the network path taken and TLS encryption are necessary and work together to guarantee this security.

---

## 9. Load Balancer

When a large number of users access the same server at the same time, it can become overwhelmed. The **load balancer** distributes and organizes this traffic across multiple servers to prevent overload.

---

## 10. Public IP vs Private IP

- **Public IP**: unique across the entire internet, officially registered by an internet service provider (ISP), and directly reachable from the outside — which makes it more exposed.
- **Private IP**: not globally unique (reused across different local networks), not directly reachable from the internet — naturally isolated by this design. To access the internet, it must be translated into a public IP by the router.

### IPv4 and IPv6
- **IPv4**: the current, most widely used version.
- **IPv6**: the next generation, designed to address the exhaustion of available IPv4 addresses.

---

## 11. NAT and PAT

- **NAT (Network Address Translation)**: translates a private IP address into a public IP address to allow communication with the outside. When the response comes back, the router remembers the original private IP to forward it correctly.
- **PAT (Port Address Translation)**: complements NAT by distinguishing multiple internal devices sharing the same public IP, using port numbers.

---

## 12. IPv6 Addressing

- **GUA (Global Unique Address)**: public IPv6 address, in the range `2000` to `3FFF`.
- **ULA (Unique Local Address)**: private IPv6 address, in the range `fc00` to `fdff`.

---

## 13. ARP (Address Resolution Protocol)

ARP is used to find the **MAC address** corresponding to a given **IP address** on the local network — the reverse of what DNS does for domain names to IP addresses.

---

## 14. The 4 DNS Servers and the Resolution Process

DNS relies on 4 types of servers:

1. **DNS Resolver**: provided by the ISP, acts as the link between the browser and the DNS system.
2. **Root Name Server**: there are 13 in the world; they know which DNS server to redirect to based on the domain's extension.
3. **TLD Name Server (Top Level Domain)**: stores domains grouped by extension (`.com`, `.org`, `.net`, etc.).
4. **Authoritative Name Server**: stores the actual IP addresses and verifies whether access to a given server is allowed.

### Concrete example — first connection to google.com

1. I type `google.com` into the browser.
2. The browser queries the **DNS Resolver** to check if it already knows the IP (cached).
3. Since this is the first connection, nothing is cached: the request goes to the **Root Name Server**.
4. The Root Name Server redirects to the correct **TLD Name Server** (`.com`).
5. The TLD Name Server redirects to the **Authoritative Name Server** for `google.com`.
6. That server returns the IP address and confirms whether access is allowed.
7. The result is returned to the browser, then **cached** in the DNS Resolver — future connections will therefore be immediate, without repeating this whole process.
