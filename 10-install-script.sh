#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]
then 
    echo " you must have root priviliges to execute the script "
if

if [ $? -ne 0 ]
then 

    echo "Installation failure"
    exit 1
    
else 
    echo "Installing git"
    dnf install git -y
fi

