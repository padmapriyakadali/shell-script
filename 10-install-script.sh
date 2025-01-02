#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]

then 
    echo " you must have root priviliges to execute the script "
else 
    dnf install mysql -y
fi

    dnf install gitt -y
