# **01 — Linux Basics**  
## **Objective**  
Consolidate the Linux fundamentals needed before moving on to permissions, processes, shell scripting, and networking.  
This module covers:  
- Filesystem navigation  
- Directory and file creation  
- Reading and editing files  
- Searching  
- Copying, moving, and deleting  
- Pipes and redirection  
- Basic disk inspection  
- Command discovery  
- Command substitution  
- Git basics  
## **What I practiced**  
### **Navigation and directory tree**  
Created a folder structure using mkdir -p, including brace expansion to create multiple nested folders in one command.  
Practiced navigating with relative paths:  
cd ..  
cd ../..  
   
A key lesson was counting ../ levels carefully when moving between deep directories.  
Useful commands:  
pwd  
ls  
ls -la  
cd  
tree  
   
### **Files and content**  
Created files with touch, wrote content using echo and nano, and read content using cat, head, and tail.  
Important distinction:  
>    # overwrite  
>>   # append  
   
Example:  
echo "hello" > file.txt  
echo "world" >> file.txt  
   
The > operator can overwrite existing content, so it must be used carefully.  
### **Search**  
Practiced searching for files and directories:  
find . -name "*.txt"  
find . -type f  
find . -type d  
   
Also practiced locating commands:  
whereis bash  
which bash  
command -v bash  
   
### **File manipulation**  
Copying:  
cp file.txt backup/  
cp -r project backup/  
   
Moving and renaming:  
mv file.txt documents/  
mv old.txt new.txt  
   
Deleting:  
rm file.txt  
rmdir empty_directory  
rm -r project/  
   
Important distinction:  
- rmdir removes empty directories.  
- rm -r removes directories and their contents.  
### **Pipes and redirection**  
Practiced connecting commands with |:  
ls -la | grep ".txt"  
   
Output redirection:  
command > output.txt  
command >> output.txt  
   
Error redirection:  
command 2> errors.txt  
   
This introduced the idea that commands have different output streams and that shell commands can be combined to build useful workflows.  
### **Disk inspection**  
Practiced checking filesystem and directory usage:  
df -h  
du -sh .  
du -sh *  
   
df shows filesystem usage.  
du shows how much space files/directories are using.  
### **Command substitution**  
Discovered $(command) to use the output of one command inside another:  
echo "$(whoami)"  
   
Example:  
echo "$(whoami)" > user.txt  
   
This became an important foundation for Bash scripting.  
### **Git**  
Tracked the work using:  
git status  
git add  
git commit -m "message"  
git push  
git log --oneline  
   
The goal was not just learning Git commands, but using Git to document the learning process.  
## **Challenges encountered**  
- Initial confusion between tail 2 file and tail -n 2 file.  
- Miscounted ../ levels when navigating between deep folders.  
- Learned the difference between > and >> after seeing how easy it is to overwrite a file accidentally.  
- Learned that Linux commands can be combined with pipes and redirection instead of being used independently.  
## **Mini exercises**  
### **Exercise — Disk inspection**  
df -h  
du -sh .  
du -sh *  
   
Identify which filesystem contains your current directory and which directory consumes the most space.  
### **Exercise — Pipes**  
ls -la | grep ".txt"  
   
List files and filter the output to show only matching .txt entries.  
### **Exercise — Redirection**  
echo "first line" > test.txt  
echo "second line" >> test.txt  
cat test.txt  
   
Observe the difference between overwriting and appending.  
### **Exercise — Error redirection**  
ls /does-not-exist 2> errors.txt  
cat errors.txt  
   
Observe what happens when an error is redirected to a file.  
### **Exercise — Command discovery**  
which bash  
command -v bash  
whereis bash  
   
Compare the information returned by each command.  
## **Files in this folder**  
- [tp-linux-basics-corrected-en.md](https://chatgpt.com/c/tp-linux-basics-corrected-en.md "https://chatgpt.com/c/tp-linux-basics-corrected-en.md") — exercise statements, solutions, and detailed reference notes.  
- Test folders (ansible/, projects/, etc.) — practical results from running the commands.  
## **Next step**  
**Day 2 — Permissions & Processes**  
Next topics:  
- chmod  
- chown  
- chgrp  
- symbolic and octal permissions  
- ps  
- top  
- kill  
- background processes  
   
