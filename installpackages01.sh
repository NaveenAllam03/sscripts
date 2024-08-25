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
    if [ $1 -ne 0 ]
    then 
        echo " $2 started installing..."
    else
        echo " $2 already exists..."
    fi    
}


if [ $USER -ne 0 ]
then
    echo "run script as sudo user..."
    exit 1
else
    echo "executing scripts as sudo user..."
fi   

for tools in $@
do
    apt list --installed $tools
    if [ $? -ne 0 ]
    then 
        apt install $tools -y
        VALIDATE $? "installation of $tools"
    else
            
done 
