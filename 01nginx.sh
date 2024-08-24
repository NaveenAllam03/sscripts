#!/bin/bash

########################
#
#
#
#
#
#
#
#
#########################

user=$(id -u)

CHECKING(){
    if [ $? -ne 0 ]
    then
       echo " Failed to install..."
       exit 1
    else 
       echo "sucessfully installing..."
    fi             
}

if [ $user -ne 0 ]
then
    echo "change to sudo user to run..."
    exit 1 
else 
    echo "executing command with sudo access..."  
fi

apt-get install nginx -y

CHECKING 


