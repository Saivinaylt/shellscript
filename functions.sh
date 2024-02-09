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

ls -ltr

VALIDATE(){

if [ $? -ne 0 ]; then
    echo " script name $0"
    echo " number of arguments $#"
    echo " all args are $@"
    echo " updating the apt repo failure $1"


}
echo "before calling the function checking name : $1"
echo " number of arguments $#"
echo " all args are $@"

VALIDATE $1

