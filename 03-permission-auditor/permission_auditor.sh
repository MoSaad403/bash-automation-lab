#!/usr/bin/bash

for i in ~/Documents/vsCode/script/*;do
    if [ -x $i ];then
        echo "${i##*/} => exectuble"
    else
        echo "${i##*/}=> Not exectuble"
    fi
done
