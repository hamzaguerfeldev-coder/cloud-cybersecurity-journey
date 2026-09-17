#!/usr/bin/env bash
#in this script we will try to verify if a path file exist or no and if it's a file or directory
if [ -f "$1" ]; then echo "it is a file"
elif [ -d "$1" ]; then echo "it is a directory"
else echo "it doesn't exist"
fi
