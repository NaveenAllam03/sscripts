#!/bin/bash

########################
# wrote a function and called it
# checked and validated before the software installation
#########################

## Storing logs of every runned shell script is very important

user=$(id -u)

CHECKING(){              # function for repetetive code and calling it to validate exit status of commands
    if [ $1 -ne 0 ]
    then 
       echo " $2 Failed to install..."
       exit 1
    else 
       echo " $2 sucessfully installed..."
    fi             
}

if [ $user -ne 0 ]       #condition checking for sudo access
then
    echo "change to sudo user to run..."
    exit 1 
else 
    echo "executing command with sudo access..."  
fi

apt-get update -y        #updating packages 

apt-get install nginx -y # installing nginx 

CHECKING $? "Nginx"      #validating installed or not with passing arguments to function.

apt-get install git - y  #installing git

CHECKING $? "git"        # validating installed or not with passing arguments to funtion.





