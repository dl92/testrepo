#!/bin/bash
#CS225 Lab2 Logic and Math
#Debbie Lane
#4/11/15
#
#Prompt the user for a number, ensure it's a number 
#and check to see if it's an EVEN number and output a message
#If it's and odd number output a different message
#

set -o nounset
NUM=0
BASE10NUM=10#$NUM

echo -e "Hello ${USER}, enter your number: \c"
read NUM 

# if NUM NOT! =~ (regex) start with 0-9 one or more of those characters $anchor to the end 
if ! [[ ${NUM} =~ ^[0-9]+$ ]] ;then
     echo "ERROR: Invalid number - Exiting";exit
else
#     NUM=$(( echo ${NUM} | sed 's/^0*//' ))    #use sed to remove leading 0 
     BASE10NUM=10#$NUM
fi

#Modulo %Remainder.  If you divide by 2 and it has a remainder it isn't an even number
RMDR=$(( ${BASE10NUM} % 2 ))

if [[ ${RMDR} -eq 0 ]] ;then
     echo "${NUM} is an even number"
else
     echo "${NUM} is an odd number"
fi

exit
