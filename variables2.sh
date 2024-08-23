#!/bin/bash
################
# passing arguments through variables.
# this helps to execute a code without even touching it 
# for the we should use special variables "$1"  "$2"
# there are many special variables in shell script 
# first write the logic then while executing pass the values 
# first value is taken as $1 and second value as $2
#
#################

echo "good morning $1 : how are you"
echo "i am fine $2, how about you?"
echo "i'm good $1, how is $3, $1"
echo "she is fine, $2"