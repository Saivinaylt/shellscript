#!/bin/bash

# output redirectores
# Stdout => sucesss =1
# stderr => failure =2

# ls -ltr > test.log if the command was sucess it output go and saved in test.log
# ls -ltr 1>test.log

# # if u want to save the error output 
# ls -ltr 2>test.logls 

# # if u need the both sucess and error msg

# ls -ltr &>test.log

# # colours
# B=30
# R=31
# G=32
# Y=33
# N=0

RED="\e[31m"
GREEN="\e[32m"
NORMAL="\e[0m"

echo "ilove  ${RED}shel ${GREEN}scripting ${NORMAL}"
