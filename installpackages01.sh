#!/bin/bash

######################
# installing packages using for loop and special variables 
# and validating those packages using functions
# 
#
#
#
#
######################

USER=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then 
        echo "started installing..."
    else
        echo "already exists..."
    fi    
}


if [ $USER -ne 0 ]
then
    echo "run script as sudo user..."
    exit 1
else
    echo "executing scripts as sudo user..."
fi   

apt-get update 
VALIDATE 
