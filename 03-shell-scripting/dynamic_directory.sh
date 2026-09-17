#!/usr/bin/env bash
#1. Get today's date using the 'date' command and we store it in a variable but we will use %Y-%m%d cuz date so long 
today=$(date +"%Y-%m-%d")
#2. create a dynamic directory name 
backup_dir="backup-$today"
#3. let's try to print what we gonna do with this variable
echo "Wait!!! your backup directory $backup_dir is creating ..."
#4. finally let's create it 
mkdir "$backup_dir"
#5. the result 
echo "Your backup directory created successfully !!!"
