#!/bin/bash

USERid=$(id -u)
if [ $USERid -ne 0 ]; then
    echo "Please run this script as root or with sudo."
fi
echo "Installing nginx web server..."
dnf install nginx -y