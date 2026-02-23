#!/bin/bash

USERid=$(id -u)

if [ $USERid -ne 0 ]; then
    echo "Please run this script as root or with sudo."
    exit 1
fi

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "$2 installing failed."
        exit 1
    else
        echo "$2 installing successfully."
    fi
}

dnf install nginx -y
VALIDATE $? installing NGINX

dnf install mysql -y
VALIDATE $? installing MySQL 

dnf install nodejs -y
VALIDATE $? installing NodeJS