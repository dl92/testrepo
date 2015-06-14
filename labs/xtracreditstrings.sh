#!/bin/bash
#CS225 Lab Extra Credit - Strings
#Debbie Lane
#5/7/15
#
#Make a shell script that will take two arguments and
#complain and exit if the first doesn't exist and
#set a default value of 10 if the second doesn't exist.
#Using string operators this script is 3 lines long including the #!/bin/bash line

set -o nounset
VAR="10"


echo "Arg1 is ${1:?}"
echo "Arg2 is ${2:-10}"

VAR="$2"






exit
