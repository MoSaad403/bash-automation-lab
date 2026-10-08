#!/usr/bin/bash

servers=(
    127.0.0.1
    8.8.8.8
    1.1.1.1
    192.168.1.1
    192.168.1.50
    192.168.1.200
    10.0.0.1
)
for i in ${servers[@]};do
    if ping -c 1 -W 500 "$i" >/dev/null; then
        echo ""$i" => ✅ Online"
    else
        echo ""$i" => ❌ Offline"
    fi
done

