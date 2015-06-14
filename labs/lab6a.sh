#!/bin/bash

#While loop
#x=0
#while true ;do
#    if [[ $x -gt 3 ]] ;then
#    break
#    fi
#(( x++ ))

#C-stype for loop
#as long as x is less than or equal to 3 - keep moving and
#for each iteration of the loop we want to increment x (x++)
for (( x=0; x<=3; x++ )) ;do
echo $x
done
