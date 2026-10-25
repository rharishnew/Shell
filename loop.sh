#!/bin/bash
user_id=$(id -u)
log_folder="/var/log/script"
log_file="${log_folder}/${0}.log"

if [ $user_id -ne 0 ]; then
    echo "run with sudo access"
    exit 1
fi
mkdir -p $log_folder
    echo "script start time $(date +"%F %T")" &>> log_file

validate (){
    if [ $1 -ne 0 ]; then
        echo "${2}..failed" | tee -a &>> log_file
        exit 1
    else 
        echo "${2}..sucess" | tee -a &>> log_file
    fi
}

for package in $@
do 
    echo "going to install: ${package}"
    dnf install $package -y &>> log_file 
    validate $? "installing ${package}"
done    