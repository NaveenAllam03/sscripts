#!/bin/bash

########################
# "\e[31m" -- Red colour
# "\e[32m" -- green colour
# "\e[33m" -- yellow colour
# "\e[0m" -- normal colour
#########################

## Storing logs of every runned shell script is very important

user=$(id -u)
TIME=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIME.log" 

R="\e[31m"
G="\e[32m" 
Y="\e[33m" 
N="\e[0m" 

CHECKING(){              # function for repetetive code and calling it to validate exit status of commands
    if [ $1 -ne 0 ]
    then 
       echo " $2 $R Failed to install..."
       exit 1
    else 
       echo " $2 $G sucessfully installed...$N"
    fi             
}

if [ $user -ne 0 ]       #condition checking for sudo access
then
    echo "change to $R sudo $N user to run..."
    exit 1 
else 
    echo "executing command with sudo access..."  
fi

apt-get update -y &>> $LOGFILE                        #updating packages and adding to logfile

apt-get install jq -y &>> $LOGFILE                  # installing nginx and adding to logfile

CHECKING $? "jq"                        #validating installed or not with passing arguments to function.

apt-get install net-tools -y &>> $LOGFILE                 #installing git and adding to logfile

CHECKING $? "net-tools"