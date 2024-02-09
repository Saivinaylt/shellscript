#!/bin/bash

ls -ltr

if [ $? -ne 0 ]; then
    echo " status of the command was failure"
    exit 1
fi

id -u

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo " u need to be root user "
    exit 1
fi

apt install git