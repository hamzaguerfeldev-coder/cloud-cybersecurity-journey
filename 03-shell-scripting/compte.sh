#!/usr/bin/env bash
#here we will print all numbers from 0 to the number choosen by you 

read -p "Give a number: " r
for ((i=0; i<=r; i++)); do
    echo "$i"
done
