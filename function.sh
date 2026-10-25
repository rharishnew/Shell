#!/bin/bash 
validate (){
    if [ $1 -ne 0 ]; then
    echo "${2} failed.. "
    esle 
        echo "${2} sucess"
        exit 1
    fi    
}
dnf install nginxx -y 
if [$? -ne 0 ]; then
    validate $? "nginx install"


