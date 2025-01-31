#!/bin/bash

#######################
# installing nginx and changing configurations 
# through shell script
#
#
#
#
#
#
#######################

user=$(id -u)
if [ $user -ne 0 ]
then
    echo " Become sudo user..."
    exit 1 
else
    echo " Executing scripts as sudo user..."
fi


        
    