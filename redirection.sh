#!/bin/bash
user_id=$(id -u)
log_folder="/var/log/script"
log_file=$ {log_folder}/${0}.log
if [ $ user_id -ne 0 ]; then
    echo "run with sudo access"
    exit 1
fi
mkdir -p $log_folder
    echo "script start time $(date)"