#!/bin/bash
#CS225 Lab13 Regex
#Debbie Lane
#6/2/15

set -o nounset

#Source Function Library
source /root/labs/flib.sh

SCRIPTNAME=$(basename $0)
#SCRIPTNAME=$($0##*/)
ITEM="${1}"

#Shell function definitions must appear in the script before they are called

##################FUNCTION
CLEANUP() {
#    rm "${TEMPFILE1}"
#    rm "${TEMPFILE2}"
    exit
}

trap CLEANUP SIGINT


if check_ssn "$ITEM" ;then
    echo "${ITEM} is a SSN"
else
 
if check_pn "$ITEM" ;then
    echo "${ITEM} is a Phone Number"
else

if check_ccn "$ITEM" ;then
    echo "${ITEM} is a Credit Card Number"
else

if check_ip "$ITEM" ;then
    echo "${ITEM} is an IP Address"
else

#if [ "$?" -ne "0" ] ;then
if $ITEM -eq "" ] ;then
    /root/labs/lab13.sh -h
    exit 1
fi

while getopts :h opt ;do
    case $opt in
        h) echo "$SCRIPTNAME Options:"
                echo -e "-h \t \t for this Help text"
                echo -e "\t \t A number is reqired as an argument to this script"
                echo -e "\t \t run this script as ./lab13.sh \"<number>\""
                echo -e "\t \t Where <number> is a SSN, Phone Number, CC Number or IP Address"
                echo -e "All other options are invalid, and this program will end" ;;
        *) echo "${SCRIPTNAME} unknown argument"; /root/labs/lab13.sh -h ;exit ;;
   esac


done

###################################################################################################################################
#THIS SECTION IS JUST NOTES
#CC 1234 1234 1234 1234
#Both of these work
#echo 1234-1234-1234-1234 | egrep -o '^[[:digit:]]{4}[- ]?[[:digit:]]{4}[- ]?[[:digit:]]{4}[- ]?[[:digit:]]{4}$'
# A backslash followed by a digit acts as a back-reference and matches the same thing as the previous grouped expression indicated by that number.
#For example ‘\2’ matches the second group expression
# echo 1234-1234-1234-1234 | egrep -o '(^[[:digit:]]{4}[- ]?)\1\1([[:digit:]]{4})'

#Phone (406) 212-1234 406212 1234 406.212.1234 406-212-1234
#See page 556 Area code start with 2 (never 0 or 1)
#Per book must be at least a space after the exchange  - match a space, a dash or a dot. ***change this Grant wants nospace, space or hyhen****
#echo "(223) 123-1234" | egrep -o '^\(?[2-9][0-9]{2}\)?(| |-|\.)[0-9]{3}( |-|\.)[0-9]{4}$'
#echo "2231231234" | egrep -o '^\(?[2-9][0-9]{2}\)?( |-|\.)?[0-9]{3}( |-|\.)?[0-9]{4}$'  *****USE THIS ONE*****


#IPv4 IP Address
#0-255.0-255.0-255.0-255 1.1.1.1 255.255.255.255
#below works, but doesn't take into account the 255 limit
#echo "1.1.1.1" | egrep -o '^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$'

#This works for the 1st octet with the dot
#echo "255." | egrep -o '(^[0-9]$)?|(^[0-9]{2}$)?|(^[0-1][0-9][0-9]$)+|(^2[0-4][0-9]$)+|(^[2][5][0-5]\.$)+'
#Couldn't get the one above to work with 4 octect, used the one below
# echo "99.100.199.255" | egrep -o '(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])+\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])+\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])+\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])+'
#########################################################################################################################################

exit
