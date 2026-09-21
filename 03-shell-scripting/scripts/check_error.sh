#!/usr/bin/env bash

shopt -s nullglob

directory="/var/log/my-app" # it can be changed :p 
found=""

for f in "$directory"/*.log; do
    echo "Scanning file: $f"

    if grep -q "FATAL_ERROR" "$f"; then
        echo "We found the error in: $f"
        found="$f"
        break
    fi
done

if [ -n "$found" ]; then
    echo "The first corrupted file is: $found"
else
    echo "No file found"
fi
