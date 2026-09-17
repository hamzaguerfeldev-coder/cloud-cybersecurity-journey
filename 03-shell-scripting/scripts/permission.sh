#!/usr/bin/env bash
#in this file we will try to check a file permissions and print them
if [ -r "$1" ]; then
    echo "File is readable"
else echo "File is not readable"
fi

if [ -w "$1" ]; then
    echo "File is writable"
else echo " File is not writable"
fi

if [ -x "$1" ]; then
    echo "File is executable"
else echo "File is not executable"
fi
