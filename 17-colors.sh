#!/bin/bash

USERid=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
R='\e[31m'
G='\e[32m'
Y='\e[33m'
B='\e[34m'

if [ $USERid -ne 0 ]; then
    echo -e "$R Please run this script as root or with sudo. $N" | tee -a $LOGS_FILE
    exit 1
fi
mkdir -p $LOGS_FOLDER

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo -e "$R $2 installing failed. $N" | tee -a $LOGS_FILE
        exit 1
    else
        echo -e "$G $2 installing successfully. $N" | tee -a $LOGS_FILE
    fi
}

for package in $@ # sudo sh 14-loops.sh nginx mysql nodejs
do
dnf installed $package &>> $LOGS_FILE
if [ $? -ne 0 ]; then
echo "$package not installed, installing now"
    VALIDATE $? "$package installation"
    dnf install $package -y &>> $LOGS_FILE
    VALIDATE $? "$package installation"
else
echo -e " $package is already installed... $Y SKIPPING $N"
fi
done