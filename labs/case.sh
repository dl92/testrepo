#!/bin/bash
#CASE
#5/7/15 - class


if [[ $1 = 1 ]] ;then
    echo "Is number 1"

elif [[ $1 = 2 ]] ;then
    echo "Is number 2"

elif [[ $1 = 3 ]] ;then
    echo "Is number 3"
else
    echo "Is something else"
fi


case $1 in
    1|4) echo "Is number 1" ;;      #1 OR 4
    2) echo "Is number 2" ;;
    3) echo "Is number 3" ;;
    *) echo "Is something else " ;;
    \?) echo "Is something else " ;;    #depending on what you put in here may have to escape it with the backslash

esac





