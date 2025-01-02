#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]

then 
    echo " you must have root priviliges to execute the script "
else 
    dnf install mysqll -y
fi

if [ $? -ne 0 ]
then 
    echo "Installing git"
    dnf install git -y
else 
    echo "Installation failure"
    exit1
fi