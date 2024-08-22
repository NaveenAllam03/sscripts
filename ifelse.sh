#!/bin/bash

##################
# if-else statement
#
#
#
##################

read -p "enter :" number
if [ $number -ge 25 ]
then 
    echo "$number is greater"
else
    echo "$number is lesser"
fi          