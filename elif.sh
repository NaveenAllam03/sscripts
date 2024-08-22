#!/bin/bash

########################
# elif statement syntax
#  
#  Variables.......
#
#  if [ condition-1 ]
#  then
#      echo "statemet-1 or task-1"
#  elif [ condition -2 ]
#  then
#      echo "statement-2 or task-2"
#  else
#      echo "statement-3 or task-3"
#  fi
#
########################

read -p "enter :" cond

if [ $cond -eq 50 ]
then
    echo " perfect "
elif [ $cond -ge 50 ]
then
    echo "$cond is greater than 50 "
else 
    echo "$cond is lesserthan 50"        
fi    