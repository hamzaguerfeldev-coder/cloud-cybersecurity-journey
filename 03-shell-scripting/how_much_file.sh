#!/usr/bin/env bash
#we will try to print the number of files&directory in actual path
r=$(pwd)
files=$(find  "$r"  -type f | wc -l)
directory=$(find "$r" -type d | wc -l)
echo "there is $files file(s) and $directory directory(s) in this path"
