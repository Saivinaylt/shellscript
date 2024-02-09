#!/bin/bash

ls -ltr

if [ $? -ne 0 ]; then
    echo " status of the command was failure"
    exit 1
fi



USERID=$(id -u)

echo "${USERID}"

if [ $USERID -ne 0 ]; then
    echo " u need to be root user "
    exit 1
fi

apt update -y

if [ $? -ne 0 ]; then
    echo "Failure"
    exit 1
else
    echo "sucess"
fi

apt install git -y

if [ $? -ne 0 ]; then
    echo "Failure"
    exit 1
else
    echo "sucess"
fi

ls -ltr



sudo apt update

if [ $? -ne 0 ]; then
    echo " updating the apt repo failure"
    exit 1
else 
    echo "updating the apt repo Sucesss"
fi 

# sudo apt install fontconfig openjdk-17-jre

# java -version

# sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
#   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

# echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
#   https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
#   /etc/apt/sources.list.d/jenkins.list > /dev/null

# sudo apt-get update

# sudo apt-get install jenkins