#!/usr/bin/env bash 
#in this script we will try to compare two numbers passed by arguments 
if [ $# -lt 2 ]; then
    echo "Usage: $0 <number1> <number2>"
    exit 1
fi
echo "we have $1 and $2 and we will compare them so there is the result"
if [ $1 -gt $2 ]; then echo "$1 bigger than $2"
elif [ $1 -lt $2 ]; then echo  "$2 bigger than $1"
else echo "$1 equal to $2"
fi
