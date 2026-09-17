#!/usr/bin/env bash
#in this script we will try to verify if the number is pair or impair 
if [ $# -lt 1 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi
if [ $(($1 % 2)) -eq 0 ];then echo "$1 is even "
else echo "$1 is odd "
fi
