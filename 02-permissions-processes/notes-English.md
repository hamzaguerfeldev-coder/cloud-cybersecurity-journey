# **02 — Permissions & Processes**  
## **Objective**  
Understand how Linux controls access to files and directories and how processes are created, monitored, and stopped.  
This module covers:  
- Symbolic permissions  
- Octal permissions  
- chmod  
- File ownership  
- chown  
- chgrp  
- Process inspection  
- ps  
- top  
- kill  
- Background processes  
## **Permissions**  
Linux permissions are divided into three categories:  
- **user (u)** — owner  
- **group (g)** — group owner  
- **other (o)** — everyone else  
The three basic permissions are:  
- r — read  
- w — write  
- x — execute  
Example:  
-rwxrwxrwx  
   
The first character indicates the file type:  
-   file  
d   directory  
   
The remaining nine characters represent permissions for:  
user     group     other  
rwx      rwx       rwx  
   
## **Symbolic notation**  
Examples:  
rwx = read + write + execute  
r-- = read only  
rw- = read + write  
--- = no permissions  
   
For directories, the meaning of permissions is slightly different:  
- r — list directory contents  
- w — create/delete entries  
- x — enter/traverse the directory  
## **Octal notation**  
Permissions can also be represented using numbers:  
r = 4  
w = 2  
x = 1  
   
Add the values together:  
rwx = 4 + 2 + 1 = 7  
rw- = 4 + 2 = 6  
r-x = 4 + 1 = 5  
r-- = 4  
   
Examples:  
rwxrwxrwx = 777  
rw-rwx--- = 670  
rwxr-xr-- = 754  
   
## **chmod**  
chmod changes permissions.  
Symbolic mode:  
chmod u-x file  
chmod u+x file  
chmod g+w file  
chmod o-r file  
   
Octal mode:  
chmod 755 script.sh  
chmod 644 file.txt  
   
Symbolic notation modifies selected permissions.  
Octal notation sets the complete permission set.  
## **chown and chgrp**  
chown changes ownership:  
chown user file  
chown user:group file  
chown :group file  
   
chgrp changes the group:  
chgrp group file  
   
These commands are important when managing Linux servers where different users and services need controlled access to files.  
## **Processes**  
A process is a running program.  
View processes:  
ps  
ps aux  
   
Search the process list:  
ps aux | grep keyword  
   
Monitor processes interactively:  
top  
   
Press:  
q  
   
to exit top.  
## **Stopping processes**  
Each process has a PID (Process ID).  
Example:  
kill PID  
   
The default kill request asks the process to terminate normally.  
A process can also be started in the background:  
command &  
   
Example:  
sleep 60 &  
   
The shell returns control while the command continues running.  
## **Practical exercises**  
### **Exercise 1 — Inspect permissions**  
Create a file:  
touch test.txt  
ls -l test.txt  
   
Identify:  
- owner  
- group  
- user permissions  
- group permissions  
- other permissions  
### **Exercise 2 — Modify permissions symbolically**  
Start with:  
chmod 644 test.txt  
ls -l test.txt  
   
Then practice:  
chmod u+x test.txt  
chmod g-w test.txt  
chmod o-r test.txt  
   
Check the result after every change.  
### **Exercise 3 — Practice octal permissions**  
Create a file:  
touch script.sh  
   
Try:  
chmod 755 script.sh  
chmod 644 script.sh  
chmod 700 script.sh  
   
After each command:  
ls -l script.sh  
   
Explain what changed.  
### **Exercise 4 — Ownership**  
Inspect ownership:  
ls -l test.txt  
   
If you have a safe test environment where you have permission to change ownership, practice:  
sudo chown user test.txt  
sudo chown user:group test.txt  
   
Then verify with:  
ls -l test.txt  
   
### **Exercise 5 — Find a process**  
Start a background process:  
sleep 120 &  
   
Find it:  
ps aux | grep sleep  
   
Identify its PID.  
### **Exercise 6 — Stop a process**  
Using the PID from the previous exercise:  
kill PID  
   
Then verify that the process has stopped.  
### **Exercise 7 — Monitor processes**  
Run:  
top  
   
Observe:  
- PID  
- CPU usage  
- memory usage  
- running processes  
Exit with:  
q  
   
## **What I learned**  
- Linux permissions use three categories: user, group, and other.  
- r, w, and x have different meanings for files and directories.  
- Symbolic and octal notation can both be used with chmod.  
- chown changes ownership while chgrp changes the group.  
- Processes have PIDs that can be inspected and managed.  
- ps provides a process snapshot while top provides an interactive view.  
- kill PID can be used to request that a process terminate.  
- & allows a command to run in the background.  
## **Next step**  
**Day 3 — Shell Scripting**  
Next topics:  
- variables  
- user input  
- arguments  
- conditionals  
- loops  
- arrays  
- file testing  
- Bash automation  
   
