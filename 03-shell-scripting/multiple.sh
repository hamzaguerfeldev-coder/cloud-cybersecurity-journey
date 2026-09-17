#!/usr/bin/env bash
#we will try to print all the multiplication table of a given number
read -p "Give a number : " r
for ((i=0; i<=r; i++)); do
	echo "$r * $i = " $(($r*$i))	
done
