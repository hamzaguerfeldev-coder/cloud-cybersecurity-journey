#!/usr/bin/env bash
#we will try to analyse a given file and print number of line , number of word and number of char
read -p " Give a path file or file " a
if [ -f "$a" ]; then
	l=$(wc -l < "$a")
	w=$(wc -w < "$a")
	c=$(wc -m < "$a")
echo "this file has $l line(s)"
echo "this file has $w word(s)"
echo "this file has $c char(s)"
elif [ -d "$a" ]; then echo "it's a directory not a file "
else echo " Something wrong !!!"
fi
