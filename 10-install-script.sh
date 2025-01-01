#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]

    then 
        echo "Error: you must have root priviliges to install"
        exit 1
fi
dnf list installed mysql 
if [ $? -ne 0 ]
then
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "Installation is not done"
        exit 1
    else
        echo "installation is success"
    fi
else
        echo "Mysql is already installed"
fi

dnf list installed git
if [ $? -ne 0 ]
then
dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "Installation is not done"
        exit 1
    else
        echo "installation is success"
    fi
else
echo "Mysql is already installed"
fi