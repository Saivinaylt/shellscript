#!/bin/bash

# all concepts

validate(){

if [ $1 -ne 0 ]; then
    echo "$2 failure"
    exit 1
else 
    echo "$2 Sucesss"
fi 

}

sudo apt update 

validate $? "updating yum"


sudo apt install fontconfig openjdk-17-jre 

validate $? "installing jdk"
 

java -version


sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key 

validate $? "dowmloading jenkines "


sudo apt install fontconfig openjdk-17-jre 

validate $? "doing same before step"


echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null 

validate $? "jenkines configrations"


 
sudo apt-get update 

validate $? "updating the repo"



sudo apt-get install jenkins 
validate $? "installing the jenkins"
