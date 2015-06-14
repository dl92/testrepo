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

set -o nounset

#VAR="/home/bob/test.txt"

VAR=${1}
VAR2=${VAR##*/}
echo ${VAR2}


exit
