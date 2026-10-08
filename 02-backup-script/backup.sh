#!/usr/bin/bash

today=$(date +%d-%m-%Y)
folders=($1 "Downloads" "Pictures" "Projects")

for i in ${folders[@]};do
    if [ -e "$i" ]; then
        $(tar -czf "$i"baUp"$today".tar.gz "$i")
        echo "Operation Successfuly! for $i"
    else
        echo "Pictures not found"
    fi
done
