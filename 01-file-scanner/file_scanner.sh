#!/usr/bin/bash bash

for i in ~/"$1"/*; do
    if [ -d "$i" ]; then
        echo "%%% StartDir %%%% ${i##*/} %%%% StartDir %%%"
        for j in $i/*;do
            if [ -d "$j" ]; then
                continue
            else
                echo "### ${j##*/} ###"
                echo "file_size => $(wc -c < "$j")"
                echo "file_line => $(wc -l < "$j")"
                echo "file_word => $(wc -w < "$j")"
                echo "@@@@@@@@@@@@"
            fi
        done
        echo "%%% EndDir %%%% ${i##*/} %%%% EndDir %%%"
    else
        echo "### ${i##*/} ###"
        echo "file_size => $(wc -c < "$i")"
        echo "file_line => $(wc -l < "$i")"
        echo "file_word => $(wc -w < "$i")"
        echo "@@@@@@@@@@@@"
    fi
done
