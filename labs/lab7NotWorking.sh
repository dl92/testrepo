#!/bin/bash
#CS225 Lab 7 - Basename
#Debbie Lane
#5/5/15
#
#Make a script that takes one argument and duplicates
#the functionality of the basename command using pattern matching
#
#basename /home/bob/test.txt
#output from above is -  test.txt
#
# something about $1 lab7.sh type in /root/bin/file.txt that is $1

set -o nounset

#VAR="/home/bob/test.txt"

#VAR=${1}
VAR=${${1}##*/}
#VAR2=${VAR##*/}
#echo ${VAR2}
echo ${VAR}


exit
