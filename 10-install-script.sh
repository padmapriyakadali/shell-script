#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]

    then 
        echo "Error: you must have root priviliges to install"
else 
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "Installation is not done"
        exit 1
    else
        echo "installation is success"
    fi
        echo "Mysql is already installed"
fi
dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "Installation is not done"
        exit 1
    else
        echo "installation is success"
    fi
