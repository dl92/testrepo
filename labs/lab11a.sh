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

#BASEDIR=
FILEINFO=$(mktemp)
FORCE=false

################Clean-up Function##############
CLEANUP() {
    rm "${TEMPFILE}
    exit
}

#Trap Ctrl-C
trap CLEANUP SIGINT

#getopts so that script will take an option when you call it
#like ./lab11.sh -f

#while getopts :hf opt ;do
#    case $opt in
#        f) check if file is already in destination, if it is skip it, if not copy it.  Leave the original copy and then with the mv, it is going to have you mv it to the new location.
#        f) FORCE=$OPTARG; mv   ;;
#        h) echo "$SCRIPTNAME Options:"
#                echo -e "-f \t \t Force move file"
#                echo -e "-h \t \t for this Help text"
#                echo -e "All other options are invalid, and this program will end" ;;
#        *) echo "${SCRIPTNAME} unknown argument"; /root/labs/lab11.sh -h ;exit ;;
 #   esac
#done


FILEINFO=$(date -f $MODTIMEFILE "+%b %d%n")
ORIGFILE=${FILEINFO##*/}
echo $ORIGFILE

exit
