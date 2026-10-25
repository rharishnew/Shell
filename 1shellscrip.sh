#!/bin/bash

user_id=$(id -u)
if (user_id -ne {0}); then 
    echo "run in sudo user"
    exit 1