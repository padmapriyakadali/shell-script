#!/bin/bash

USERID=$(id -u)

VALIDATE(){

    if [ $1 -ne 0 ]
        then 
            echo "$2 ... is failure"
            exit 1 
        else 
            echo "$2 ... is success"
    fi
}

if [ $? -ne 0 ]
    then
        echo "You must have root credentials to execute the script"
        exit 1
fi

dnf list installed mysql
   if [ $? -ne 0 ]
    then   
        dnf install mysql -y
        VALIDATE $? "Installing Mysql"
    fi

dnf list installed git
    if [ $? -ne 0 ]
    then  
        dnf install git -y
        VALIDATE $? "Installing git"
    fi
