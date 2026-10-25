#!/bin/bash 
validate (){
    if [ $1 -ne 0 ]; then
    echo "${2} failed.. "
    exit 1
    esle 
        echo "${2} sucess"
    fi    
}
dnf install htop -y 

    validate $? "nginx install"