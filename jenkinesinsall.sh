#!/bin/bash

# all concepts


# set -x

USER=$(id -u)

echo "${USER}"

if [ $USER -ne 0 ]; then
    echo "ur not root user please be a root userto run the script"
    exit 1
fi 



validate(){

if [ $1 -ne 0 ]; then
    echo "$2 failure"
    exit 1
else 
    echo "$2 Sucesss"
fi 

}

sudo apt update  > test.jen

validate $? "updating yum"


sudo apt install fontconfig openjdk-17-jre  > test.jen

validate $? "installing jdk"
 

java -version > test.jen


sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key 

validate $? "dowmloading jenkines "


sudo apt install fontconfig openjdk-17-jre > test.jen

validate $? "doing same before step"


echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null 

validate $? "jenkines configrations"


 
sudo apt-get update > test.jen

validate $? "updating the repo"



sudo apt-get install jenkins  > test.jen
validate $? "installing the jenkins"
