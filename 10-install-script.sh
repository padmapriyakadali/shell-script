#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo " you must have root priviliges to execute the script "
    exit 1
fi

if [ $? -ne 0 ]
then 

    echo "Installation failure"
    exit 1
    
else 
    echo "Installing git"
    dnf install git -y
fi

