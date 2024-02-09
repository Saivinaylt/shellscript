#!/bin/bash

# jenkins(){
#    sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
#   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.ke

#   echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
#   https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
#   /etc/apt/sources.list.d/jenkins.list > /dev/null

#   sudo apt-get update

#   sudo apt-get install jenkins 

#   systemctl status jenkins
# }

# jenkins

VALIDATE(){

if [ $? -ne 0 ]; then
    echo " updating the apt repo failure $1"
    exit 1
else 
    echo "updating the apt repo Sucesss $1"
fi

}



VALIDATE $1

