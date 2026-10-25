#!/bin/bash 
validate (){
    if [ $1 -ne 0 ]; then
    echo "${2} failed.. "
}
dfn install nginx -y 
if [$? -ne 0 ]; then
    validate $? "nginx install"
esle 
        echo "${2} sucess"
        exit 1
fi

