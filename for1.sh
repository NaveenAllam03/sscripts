#!/bin/bash 

#########
# for to print date very 5 seconds 
#
#
#########

for a in {1..5}
do
echo $(date)
sleep 3
done

##########
# to print only specific things
# 
# for a in {1..10}
# do
# echo $(date) | awk -F " " '{print $1, $1, $3, $4}'
# done
#
##########
