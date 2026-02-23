#!/bin/bash

USERid=$(id -u)
if [ $USERid -ne 0 ]; then
    echo "Please run this script as root or with sudo."
    exit 1
fi
echo "Installing nginx web server..."
dnf install nginx -y
if [ $? -ne 0 ]; then
    echo "nginx web server installed failed."
    exit 1
else
    echo "nginx web server installed successfully."
fi  
dnf install mysql-sever -y
if [ $? -ne 0 ]; then
    echo "mysql-sever installation failed."
    exit 1
else
    echo "mysql-sever installed successfully."
fi
dnf install nodejs -y
if [ $? -ne 0 ]; then
    echo "nodejs installation failed."
    exit 1
else
    echo "nodejs installed successfully."
fi