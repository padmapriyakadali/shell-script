#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]

then 
    echo " you must have root priviliges to execute the script "
else 
    dnf install mysqll -y
fi

    dnf install git -y