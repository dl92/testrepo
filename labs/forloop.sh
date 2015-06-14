#!/bin/bash

END=10

#LIST="1 2 3 4 5"
#LIST="Toyota;Mazda;Mercedes Benz"

#OLDIFS=${IFS}			#Save old Filed Separator b4 change
#IFS=$'\n'			#Change default Field Separator

for ITEM in $(cat /etc/passwd) ;do
#for ITEM in $LIST ;do
#for ITEM in {1..10} ;do   	#Build-in

#####Not sure if seq is in () or {}
#for ITEM in ${seq 1..10} ;do  	#Not built-in, but can use var $END instead of number.  
#for ITEM in ${seq 1..$END} ;do  	#Not built-in, but can use var $END instead of number.  
for ((x=1; x<=3; x++)) ;do	#C Style For loop
for ((x=1; y=2; x<=3,y<4; x++,y++)) ;do	#C Style For loop

x=0
while [ $x -le 3 ] ;do		#while loop same as C style except ??? listen to recording
	(( x++ ))
	echo $x

	echo $x $y			#this line goes with the C Style for loop
	OUTPUT=$(echo "Item ${ITEM}"
	echo $OUTPUT

done
#IFS=${OLDIFS}			#Put original FS back after.





for ITEM in 1 2 3 4 5 ; do
	if [[ $ITEM = 3 ]] ;then
		continue
	fi
	echo "Got here for iteration $ITEM"
done
