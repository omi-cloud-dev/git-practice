#!/bin/bash

USERID=$(id -u)

CHECK_ROOT(){

    if [ $USERID -ne 0]
    then
        echo "please run the script under root privilges"
        exit 1
    fi    
}

dnf list installed nginx

if [$? -ne o]
then dnf install nginx -y