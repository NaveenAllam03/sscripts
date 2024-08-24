#!/bin/bash

#######################
# arrays are used to store multiple variables in one memory location
# and basically also saves memory space
# index starts with 0 in an array 
# 
#######################

family=( "father","mother","son","daughter" )
echo "the first value is : ${family[01]}"  #prints 01 element of array
echo "to print whole array : ${family[@]}" #prints whole array..