#!/bin/bash
#CS225 Lab8 Assign all fields to variables - Parameter Substitution
#Debbie Lane
#5/6/15
#
#Using the last line of /var/share/CS225/addresses.csv gather each field
#into the following variables using bash pattern substitution.

set -o nounset

VAR=$(tail -n1 /var/share/CS225/addresses.csv)
#echo VAR is ${#VAR} long

# Below is the line we are working with
### "Joey","Bolick","Utility Trailer Sales","7700 N Council Rd","Oklahoma City","Oklahoma","OK","73132","405-728-5972","405-728-5244","joey@bolick.com","http://www.joeybolick.com"

# The # remove text from the beginning (right)  of the string
# # removes the shortest match #*, If you use 1 # it matches the 1st pattern
# ## removes the longest match ##*, if you use 2 ## it matches the last one.
#If you do 2 ## it’s going to keep on going until it gets to the last comma (dilimiter.
#
#notice the , placement moves depending of if you start from the beginning or end
# % removes text from the end (left) of the string %,*


FNAME=${VAR%%,*}
#LNAME=${VAR%,*} #this cuts off the httpWEBURL field
#LNAME=${VAR#*,} #this starts with Bolick but has the rest of the line
WEBURL=${VAR##*,}
VAR=${VAR%,*} #without weburl
EMAIL=${VAR##*,}
VAR=${VAR%,*} #without email
WPHONE=${VAR##*,}
VAR=${VAR%,*} #without wphone
HPHONE=${VAR##*,}
VAR=${VAR%,*} #without hphone
ZIP=${VAR##*,}
VAR=${VAR%,*} #without zip
VAR=${VAR#*,} #without fname
LNAME=${VAR%%,*} 
VAR=${VAR#*,} #without fname and lname
COMPANY=${VAR%%,*} 
VAR=${VAR#*,} #without fname and lname and company
STREET=${VAR%%,*} 
VAR=${VAR#*,} #without fname lname company street
CITY=${VAR%%,*} 
VAR=${VAR#*,} #without fname lname company street city
STATE=${VAR%%,*VAR#*,} 


#####################
#STATE=${VAR##*,*} #it gets goofey here "Oklahoma City","Oklahoma","OK",
#VAR=${VAR%,*} #without state
###########CITY=${VAR##*, }
#VAR=${VAR%,*} #without state state
#CITY=${VAR##*,}
####################




echo "FNAME is ${FNAME}"
echo "LNAME is ${LNAME}"
echo "COMPANY is ${COMPANY}"
echo "STREET is ${STREET}"
echo "CITY is ${CITY}"
echo "STATE is ${STATE}"
echo "ZIP is ${ZIP}"
echo "HPHONE is ${HPHONE}"
echo "WPHONE is ${WPHONE}"
echo "EMAIL is ${EMAIL}"
echo "WEBURL is ${WEBURL}"



exit
