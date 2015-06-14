#!/bin/bash 
#CS225 Lab5 - Loops
#Debbie Lane
#4/23/15
#

#Loop through the items in medialist.txt
#Check to see if each item exists in the medialab directory
#If it does output the name to a a new file called foundfiles.txt
#If it doesn't output the name to anew file call lostfiles.txt
#Save your script as lab5.sh

#for file in $(cat /root/medialab/medialist.txt) ;do
#echo $i
#	if [ -d "$file" ] ;then
#		echo "$file is a directory - exit"
#	elif [ -f "$file" ] ;then
#		echo "$file" is a file"
#		[[ -e /root/medialab/$file ]]
#		echo "$file found in medialab"
#	else
#		echo "$file doesn't exist"
#	fi

LIST="/root/medialab/medialist.txt"
FOUNDFILES="/root/labs/foundfiles.txt"
LOSTFILES="/root/labs/lostfiles.txt"

#Cleanup from previous run - remove output files
rm "${FOUNDFILES}"
rm "${LOSTFILES}"

for FILE in $(cat "${LIST}") ;do
	if [[ -e "/root/medialab/${FILE}" ]] ;then
#		echo "${FILE} foundfiles in medialab"
		echo "${FILE}" >> "${FOUNDFILES}"
else
#		echo "$FILE lostfiles not in medialab"
		echo "${FILE}" >> "${LOSTFILES}"
	fi

done
exit
