#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/logs/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1)    # $0-script name
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

VALIDATE(){

    if [ $1 -ne 0 ]
        then 
            echo -e "$2 ... is $R failure $N"
            exit 1 
        else 
            echo -e "$2 ... is $G success $N"
    fi
}

echo "Script started executing at :: $TIMESTAMP" &>>$LOG_FILE_NAME  # 1- success; 2- failure; & - for both success and failure output

if [ $USERID -ne 0 ]
    then
        echo "You must have root credentials to execute the script"
        exit 1
fi

dnf list installed mysql   &>>$LOG_FILE_NAME
   if [ $? -ne 0 ]
    then   
        dnf install mysql -y  &>>$LOG_FILE_NAME
        VALIDATE $? "Installing Mysql" 
    else 
        echo -e "MySql is already $G installed $N"
   fi

dnf list installed git  &>>$LOG_FILE_NAME
if [ $? -ne 0 ]
    then  
        dnf install git -y
        VALIDATE $? "Installing git"  &>>$LOG_FILE_NAME
    else 
        echo -e "Git is already $G installed $N"
 fi
