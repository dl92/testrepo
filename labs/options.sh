#!/bin/bash

#while getopts :hx: opt ;do
while getopts :hx:t: opt ;do   #2 var end up with 2 $OPTARG
    case $opt in
        h) echo "$0 - script to show options" ;;
        x) X=$OPTARG ; echo "$0 - pressed x with $X argument" ;;
        t) T=$OPTARG ; echo "$0 - pressed t with $T argument" ;;
        *) echo "$0 - unknown argument" ;;


    esac

done
echo $OPTIND
#echo $1
shift $(($OPTIND -1))
#echo $1
echo "\$1 is $1"
