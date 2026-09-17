#!/usr/bin/env bash
#with this script we will try to find if a given word as argument exists in given fil
read -p "What word you looking for " word
read -p "What file you looking in " file
if [ -d "$file" ]; then echo "This is a directory , try to enter a valid file"
elif [ -f "$file" ]; then 
 if grep -q "$word" "$file"; then echo "the word : $word exist in the file : $file"
                         else echo "the word : $word doesn't exist in the file : $file"
			fi
else echo "Something wrong !!!"

fi
