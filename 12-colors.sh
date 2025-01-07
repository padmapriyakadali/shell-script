#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"


VALIDATE(){

    if [ $1 -ne 0 ]
        then 
            echo -e "$2 ... is $R failure"
            exit 1 
        else 
            echo -e "$2 ... is $G success"
    fi
}

if [ $USERID -ne 0 ]
    then
        echo "You must have root credentials to execute the script"
        exit 1
fi

dnf list installed mysql
   if [ $? -ne 0 ]
    then   
        dnf install mysql -y
        VALIDATE $? "Installing Mysql"
    else 
        echo -e "MySql is already $G installed"
   fi

dnf list installed git
if [ $? -ne 0 ]
    then  
        dnf install git -y
        VALIDATE $? "Installing git"
    else 
        echo -e "Git is already $R installed"
 fi
