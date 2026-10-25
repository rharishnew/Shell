#!/bin/bash

user_id=$(id_u)
if (user_id -ne 0); then 
    echo "run in sudo user"
    exit 1