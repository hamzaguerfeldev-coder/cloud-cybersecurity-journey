# **🔐 Day 2 — Linux Permissions & Processes**  
This module builds on the Linux fundamentals from Day 1 and introduces **file permissions, ownership, and process management**.  
The goal is to understand how Linux controls access to files and how running processes can be inspected and managed.  
## **🎯 Objectives**  
- Understand Linux file permissions  
- Convert symbolic permissions to octal notation  
- Use chmod to modify permissions  
- Understand file ownership  
- Use chown and chgrp  
- Inspect running processes  
- Understand process IDs (PIDs)  
- Start background processes  
- Terminate processes with kill  
## **🔐 File Permissions**  
Linux permissions are represented using three permission groups:  
User    Group    Others  
rwx     rwx      rwx  
   
Each permission has a numeric value:  
| | |  
|-|-|  
| **Permission** | **Value** |   
| r — read | 4 |   
| w — write | 2 |   
| x — execute | 1 |   
Examples:  
rwx = 7  
rwxrwxrwx = 777  
rw-rwx--- = 670  
rwxr-xr-- = 754  
   
## **🛠️ Commands Practiced**  
### **Change permissions**  
chmod 600 secret.txt  
chmod 644 secret.txt  
   
### **Change ownership**  
chown user file  
   
### **Change group ownership**  
chgrp group file  
   
### **Inspect permissions**  
ls -l  
   
## **⚙️ Process Management**  
A process is a running instance of a program.  
Each process has a **PID (Process ID)**.  
### **View processes**  
ps aux  
   
### **Search for a process**  
ps aux | grep sleep  
   
### **Run a process in the background**  
sleep 300 &  
   
### **Terminate a process**  
kill <PID>  
   
### **Monitor processes**  
top  
   
## **🧪 Hands-On Lab**  
A small practical lab was used to reinforce permissions and process management.  
### **File permissions**  
mkdir day2-lab  
cd day2-lab  
   
touch secret.txt  
   
chmod 600 secret.txt  
ls -l secret.txt  
   
chmod 644 secret.txt  
ls -l secret.txt  
   
This demonstrates how changing permissions affects the access mode of a file.  
### **Process management**  
sleep 300 &  
   
ps aux | grep sleep  
   
kill <PID>  
   
This demonstrates starting a background process, finding its PID, and terminating it.  
## **🧠 Key Concepts Learned**  
### **Permissions**  
Linux uses permissions to control what users can:  
- Read  
- Write  
- Execute  
### **Ownership**  
Files have:  
- An owner  
- A group  
- Permissions for others  
### **Processes**  
Running programs are represented as processes.  
Important concepts include:  
- PID  
- Background processes  
- Process inspection  
- Signals  
- Process termination  
## **📚 Notes**  
Detailed notes from this module:  
👉 [View Day 2 Notes](https://github.com/hamzaguerfeldev-coder/cloud-cybersecurity-journey/blob/main/02-permissions-processes/notes-English.md "https://github.com/hamzaguerfeldev-coder/cloud-cybersecurity-journey/blob/main/02-permissions-processes/notes-English.md")  
## **🔜 Next Step**  
After permissions and process management, the journey continues with:  
🌐 **Networking Fundamentals**  
Topics will include:  
- IP addresses  
- CIDR  
- DNS  
- TCP / UDP  
- Ports  
- SSH  
- HTTP / HTTPS  
- Firewalls  
- Basic network troubleshooting  
**Understand the system before trying to automate it.**  
-    
