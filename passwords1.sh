#!/bin/bash

###################
# generally we dont print password's in real-time 
# this script is for understanding purpose for me
# 
# -s is used to secretly enter in terminal
# -p is used to prompt the message written in ("") while using read command
#
#  echo "enter username : "
#  read username
#  echo "enter password : "
#  read password
#
###################

read -s -p "enter username : " username

echo  $username #generally we dont print this type of info in production systems

read -s -p "enter password : " pass

echo  $pass # password printing in shell scripts is highly avoidable in realtime and it shows every thing in logs.