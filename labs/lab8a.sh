#!/bin/bash
#CS225 Lab8 Assign all fields to variables - Parameter Substitution
#Debbie Lane
#5/6/15
#
#Using the last line of /var/share/CS225/addresses.csv gather each field
#into the following variables using bash pattern substitution.

set -o nounset

#VAR=$(tail -n1 /var/share/CS225/addresses.csv)
OLDIFS=$IFS
#IFS=","

while IFS="," read f1 f2 f3
do
    FNAME="${f1}"
    LNAME="$f2"
    VAR3="$f3"
echo $FNAME
echo $LNAME
echo $VAR3
done < /var/share/CS225/addresses.csv

IFS=$OLDIFS

#VAR=$(tail -n1 /var/share/CS225/addresses.csv)
#echo VAR is ${#VAR} long

# Below is the line we are working with
### "Joey","Bolick","Utility Trailer Sales","7700 N Council Rd","Oklahoma City","Oklahoma","OK","73132","405-728-5972","405-728-5244","joey@bolick.com","http://www.joeybolick.com"

# The # remove text from the beginning of the string
# # removes the shortest match #*,
# ## removes the longest match ##*,
#
#notice the , placement moves depending of if you start from the beginning or end
# % removes text from the end of the string %,*


#FNAME=${VAR%%,*}
#LNAME=${VAR%,*} #this cuts off the httpWEBURL field
#LNAME=${VAR#*,} #this starts with Bolick but has the rest of the line
#WEBURL=${VAR##*,}
#echo ${FNAME}
#echo ${LNAME}
#echo ${WEBURL}



exit
