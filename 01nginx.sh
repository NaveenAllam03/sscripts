#!/bin/bash

########################
# wrote a function and called it
# checked and validated before the software installation
# 
#
#
#
#
#
#########################

user=$(id -u)

CHECKING(){
    if [ $1 -ne 0 ]
    then 
       echo " $2 Failed to install..."
       exit 1
    else 
       echo " $2 sucessfully installed..."
    fi             
}

if [ $user -ne 0 ]
then
    echo "change to sudo user to run..."
    exit 1 
else 
    echo "executing command with sudo access..."  
fi

apt-get update -y

apt-get install nginx -y

CHECKING $? "Nginx"

apt-get install git -y

CHECKING $? "git"





