#!/bin/bash
#################
# checking file is present or not through variables
# witre read command and place the input into a variable 
# write if condition to validate
##################

read -p "enter a file name: " file1
if [ -f $file1 ]
then 
    echo "file Avaliable"
else
    echo "not Avaliable"
fi        
