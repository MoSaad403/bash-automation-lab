#!/usr/bin/env bash

servers=(
    127.0.0.1
    8.8.8.8
    1.1.1.1
    192.168.1.1
    192.168.1.50
    192.168.1.200
    10.0.0.1
)

log_count=0
script_count=0
backup_count=0
online_count=0
offline_count=0

backup_dirs() {
    for dir in "$@"; do
        if [[ -d "$dir" ]]; then
            tar -czf "${dir##*/}-backup.tar.gz" "$dir"

            echo "########### ${dir##*/} ###########"
            echo "Backup Operation Successful!"
            echo "Files Count => $(find "$dir" -type f | wc -l)"
            echo "################################"
            echo

            ((backup_count++))
        fi
    done
}

check_logs() {
    for file in "$@"; do
        if [[ "$file" == *.log ]]; then
            echo "########### ${file##*/} ###########"
            echo "File Size => $(wc -c < "$file")"
            echo "File Lines => $(wc -l < "$file")"
            echo "################################"
            echo

            ((log_count++))
        fi
    done
}

check_scripts() {
    for script in "$@"; do
        if [[ "$script" == *.sh && -x "$script" ]]; then
            echo "${script##*/} => Executable"
            ((script_count++))
        fi
    done
}

check_servers() {
    for server in "${servers[@]}"; do
        if ping -c 1 -W 50 "$server" >/dev/null 2>&1; then
            echo "$server => Online"
            ((online_count++))
        else
            echo "$server => Offline"
            ((offline_count++))
        fi
    done
}

while getopts ":f:b:x:s" option; do
    case "$option" in
        f)
            check_logs "$@"
            ;;
        b)
            backup_dirs "$@"
            ;;
        x)
            check_scripts "$@"
            ;;
        s)
            check_servers
            ;;
        r)
             final_report
            ;;
        *)
            echo "Usage: $0 [-f] [-b] [-x] [-s]"
            exit 1
            ;;
    esac
done

final_report() {
    echo
    echo "========== Report =========="
    echo "Logs Checked: $log_count"
    echo "Scripts Checked: $script_count"
    echo "Backups Created: $backup_count"
    echo "Servers Online: $online_count"
    echo "Servers Offline: $offline_count"
    echo "============================"
}
