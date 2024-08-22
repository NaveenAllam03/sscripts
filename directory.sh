#!/bin/bash

######################
# checking weather the directory is present or not.
# syntax
# -d in if condition represents directory
# write the directory you want to check in if condition 
# and validate..
#
#
######################
if [ -d /etc/ssh ]
then 
    echo "directory is avaliable"
else     
    echo "directory is not avaliable"
fi    