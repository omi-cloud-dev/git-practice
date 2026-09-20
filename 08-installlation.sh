#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
 then
        echo "please run the script under root privilges"
        exit 1
fi    

dnf list installed git

if [ $? -ne 0 ]
then
    echo "git is not installed , going to install git.."
    dnf install git -y
else
    echo "git is already installed "    
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "my sql is not installed, goingo to install my sql.."
    dnf install mysql -y
else
    echo " my sql is already installed "
fi        