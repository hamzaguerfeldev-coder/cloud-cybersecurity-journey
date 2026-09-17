#!/usr/bin/env bash
#in this script we will try to get the sum of two numbers passed as arguments :p 
if [ $# -lt 2 ]; then
    echo "Usage: $0 <number1> <number2>"
    exit 1
fi
sum=$(($1+$2))
echo "the two numbers are $1 and $2"
echo " their sum is $sum"
