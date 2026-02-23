#!/bin/bash

USERid=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USERid -ne 0 ]; then
    echo "Please run this script as root or with sudo."
    exit 1
fi
mkdir -p $LOGS_FOLDER

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "$2 installing failed."
        exit 1
    else
        echo "$2 installing successfully."
    fi
}

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? installing NGINX

dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? installing MySQL 

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? installing NodeJS 
