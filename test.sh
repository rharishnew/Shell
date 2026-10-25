#!/bin/bash
validate (){
    if [ $1 -ne 0 ]; then
        echo "${2}..failed"
    exit 1
    else 
        echo "${2}.. sucess"
    fi
}

dnf install mysql -y 
validate $? "nginx instalation"

dnf install htop -y 
validate $? "htop instalation"
