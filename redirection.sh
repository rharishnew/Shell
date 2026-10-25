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
        echo "${2}..failed" | tree -a &>> log_file
        exit 1
    esle 
        echo "${2}..sucess" | tree -a &>> log_file
    fi
}

dnf install htop -y &>> log_file
validate $? "htop installed"

dnf install mysqll -y &>> log_file
validate $? "mysql installed"

    echo "the task is completed $(date +"%F %T")" &>> log_file




