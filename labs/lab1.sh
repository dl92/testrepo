#!/bin/bash
#CS225 Lab 1 Basic Conditionals
#Debbie Lane
#4/11/2015
#
set -o nounset
NUM=0
#echo ${NUM} $?

#Prompt the user to enter a number
echo -e "Hello ${USER}, enter your number: \c"
#If the number is larger than 5 output a message
#If the number is not larger than 5 output a message
read NUM
if [[ ${NUM} -gt 5 ]] ;then
     echo "${NUM} is greater than 5"
else
     echo "${NUM} is not larger than 5"
fi
exit
