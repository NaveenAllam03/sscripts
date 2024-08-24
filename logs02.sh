#!/bin/bash

########################
# taking log of every command executed in shell script manually
# first created a logfile path and redirected logs to it
# $0 will gives script name, it is a special variable.
#########################

## Storing logs of every runned shell script is very important

user=$(id -u)
TIME=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIME.log" 

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

apt-get update -y &>> $LOGFILE                        #updating packages and adding to logfile

apt-get install jq -y &>> $LOGFILE                  # installing nginx and adding to logfile

CHECKING $? "jq"                        #validating installed or not with passing arguments to function.

apt-get install net-tools -y &>> $LOGFILE                 #installing git and adding to logfile

CHECKING $? "net-tools"