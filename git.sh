#1/bin/bash

##########################
# installing git through shell script
# steps 
# check git package is avaliable or not with exit status..
# 
# this is for ubuntu 
# change package managers for different versions..
#
#
##########################

VALIDATION(){
    if [ $? -ne 0 ]
    then 
        echo " installing git.."
    else
        echo " git is installed.."
    fi        
}

PACKAGE=git
ID=$(id -u)
if [ $ID -ne 0 ]
then 
    echo " run script with sudo access... "
    exit 1 
else
    echo "running script.."
fi  

apt-get list installed $PACKAGE
VALIDATION 

apt-get install $PACKAGE -y
VALIDATION

