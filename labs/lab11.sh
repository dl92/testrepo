#!/bin/bash

#Function toward top, then call them down below
#cleanup function
#trap
#other function
#everything else

#stat --printf=%y%n/n file-9.txt /n=newline
#stat -c %y%n *  - %y=time of last modification %n=filename
#stat -c %y%n /root/timefiles/file-9.txt
#2005-05-10 10:22:00.000000000 -0700/root/timefiles/file-9.txt

#when you call script.sh -f    mv the file to new location
#when you call script.sh       leave the original file where they are, make a copy

################################################################################
#Below is how Grant suggested to organize thoughts for this script
# This is the result of getopts - Is force set (conditional check later)
#   If it is set variable FORCE=true
#   If it is not set variable FORCE=false

#loop thru files
# get month & day from modified time stamp ( use stat command) maybe put in function
#   if directories do not exist
#        make them          #maybe put in function
#   if FORCE=true
#       move file
#   if FORCE=false
#       copy files
###############################################################################

set -o nounset

OLDIFS=${IFS}                  #Save old Field Separator b4 change
IFS=$'\n'                      #Change default Field Separator

#Source Function Library
source /root/labs/flib.sh

#BASEDIR=
FILEINFO=$(mktemp)
MODTIMEFILE=$(mktemp)
FORCE=false

################Clean-up Function##############
CLEANUP() {
    rm "${TEMPFILE}"
    rm "${FILEINFO}"
    rm "${MODTIMEFILE}"
    exit
}

#Trap Ctrl-C
trap CLEANUP SIGINT

FILEINFO=$(mktemp)
MODTIME=$(mktemp)

#getopts so that script will take an option when you call it
#like ./lab11.sh -f

while getopts :hf opt ;do
    case $opt in
#        f) check if file is already in destination, if it is skip it, if not copy it.  Leave the original copy and then with the mv, it is going to have you mv it to the new location.
#        f) FORCE=true ;;
        h) echo "$SCRIPTNAME Options:"
                echo -e "-f \t \t Force move file"
                echo -e "-h \t \t for this Help text"
                echo -e "All other options are invalid, and this program will end" ;;
        *) echo "${SCRIPTNAME} unknown argument"; /root/labs/lab11.sh -h ;exit ;;
   esac
done


#Example of what the stat data looks like
#2005-05-10 10:22:00.000000000 -0700/root/timefiles/file-9.txt

STATINFO=$(stat -c %y%n /root/timefiles/* > $FILEINFO)
#FILEINFO=$(stat -c %y%n /root/timefiles/*)
for ITEM in $(cat ${FILEINFO}) ;do
ORIGFILE=${ITEM#*/}
#ORIGFILE=${ITEM##*/}
echo $ORIGFILE
MODTIME=${ITEM% *}
echo $MODTIME > ${MODTIMEFILE}
MODMONTH=$(date -f ${MODTIMEFILE} +%b) 
echo $MODMONTH
    if [[ ! -d /root/timefiles/${MODMONTH} ]] ;then
mkdir -p /root/timefiles/${MODMONTH}
    fi

MODDAY=$(date -f ${MODTIMEFILE} +%d) 
echo $MODDAY
    if [[ ! -d /root/timefiles/${MODMONTH}/${MODDAY} ]] ;then
        mkdir  "/root/timefiles/${MODMONTH}/${MODDAY}"
    fi


    if FORCE=false  ;then
        cp -p "/${ORIGFILE}" "/root/timefiles/${MODMONTH}/${MODDAY}/"
#    else
#        mv "/${ORIGFILE}" "/root/timefiles/${MODMONTH}/${MODDAY}/"
    fi
done

IFS=${OLDIFS}                  #Put original FS back after.

exit
