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

echo -e "Hello ${USER}, enter your number: \c"
read NUM 

# if NUM NOT =~ (regex) start with 0-9 - not valid digit
if ! [[ ${NUM} =~ ^[0-9]+$ ]] ;then
     echo "ERROR: Invalid number - Exiting";exit
else

#conditional - if the integer is only one character long
#AND it is a 0 - do nothing 
#else remove the leading 0

	if [[ "${NUM}" =~ ^(?!0$)\d{1}$ ]] ;then
	     NUM=$(( echo ${NUM} | sed 's/^0*//' ))    #use sed to remove leading 0 
	fi
fi

#Modulo %Remainder.  If you divide by 2 and it has a remainder it isn't an even number
RMDR=$(( ${NUM} % 2 ))

if [[ ${RMDR} -eq 0 ]] ;then
     echo "${NUM} is an even number"
else
     echo "${NUM} is an odd number"
fi

exit
