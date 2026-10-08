#!/usr/bin/bas

for i in *; do
    echo ""$i" => $(du -h $i | cut -f1 | sort -h)"
doneh
