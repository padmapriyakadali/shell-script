#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo " you must have root priviliges to execute the script "
    exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ]
    then 
            dnf install mysql -y
        if [ $? -ne 0 ]
        then 
            echo "Mysql installation is failure"
            exit 1 
        else 
            echo "Mysql Installation is success"
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
                echo "git installation is failure"
                exit 1
            else 
            echo "git Installation is success"  
        fi
else 
    echo "Git is already installed"
fi