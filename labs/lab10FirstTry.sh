#!/bin/bash
#Debbie Lane
#CS225 Lab10 - Script Control Ch 15-17
#5/14/15
#
#List all files one per line in the entire OS
#Store the filelist in a temp file
#Clean-up the temp file and exit - using a function, if ctrl-C
#
#trap run whatever is in "quotes" SIGINIT is ctrl-C
# trap cleanup SIGINT   cleanup is the name of the function
#mktemp don't need -t as it automatically creates a random filename in  /tmp
#assign mktemp to a variable - then just have to clean up that variable name
#1 cleaup Function
#1 Trap
#3 everything else

set -o nounset

##################FUNCTION
CLEANUP() {
    rm $TMPFILE
    exit
}
trap CLEANUP SIGINT
COUNT=1
TMPFILE=$(mktemp)
find / -print >> ${TMPFILE}

for LINE in $(cat "${TMPFILE}") ;do
    echo $LINE
    (( COUNT++ ))
    echo $COUNT
done

#while [ $count -le 10 ] ;do
#    echo "Loop #${count}"
#    sleep 1
#    (( count++ ))
#done


exit
