#!/bin/bash
#
#CS225 Lab4
#Debbie Lane
#4/21/15
#
#Use logical Ands and ORs in conditions to simplify your code.
#Prompt the user for a number, sanitize the input
#(make sure the input is an integer)
#and use a logical AND to ensure its between 50 and 100
#Do this with ONE if conditional
#

set -o nounset
echo -e "Hello $USER, please enter your number: \c" 
read NUM
BASE10NUM=10#$NUM

#Instead of this - if ! [[ ${NUM} =~ ^[0-9]+$ ]] ;then - use [[:digit:]] which is POSIX Compliant 
if ! [[ "${NUM}" =~ ^[[:digit:]]+$ ]] ;then 
exit
else
     BASE10NUM=10#$NUM
     if [[ "${BASE10NUM}" -ge 50 && "${BASE10NUM}" -le 100 ]] ;then
     echo "Success! - ${NUM} is a valid number"
else
     echo "${NUM} is not in the valid range of 50-100 - exiting"
     fi
fi

exit
