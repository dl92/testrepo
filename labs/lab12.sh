#!/bin/bash
#CS225 Lab12 Arrays
#Debbie Lane
#5/28/15

set -o nounset

OLDIFS=${IFS}                  #Save old Field Separator b4 change
IFS=$'\n'                      #Change default Field Separator

################Clean-up Function##############
CLEANUP() {
#    rm "${TEMPFILE}"
    exit
}

#Trap Ctrl-C
trap CLEANUP SIGINT

COUNT=0
for VAR in $(cat /var/share/CS225/addresses.csv) ;do

    FNAME[$COUNT]=${VAR%%,*}    ;VAR=${VAR#*,}
    LNAME[$COUNT]=${VAR%%,*}    ;VAR=${VAR#*,}
    COMPANY[$COUNT]=${VAR%%,*}  ;VAR=${VAR#*,}
    STREET[$COUNT]=${VAR%%,*}   ;VAR=${VAR#*,}
    CITY[$COUNT]=${VAR%%,*}     ;VAR=${VAR#*,}
    COUNTY[$COUNT]=${VAR%%,*}   ;VAR=${VAR#*,}
    STATE[$COUNT]=${VAR%%,*}    ;VAR=${VAR#*,}
    ZIP[$COUNT]=${VAR%%,*}      ;VAR=${VAR#*,}
    HPHONE[$COUNT]=${VAR%%,*}   ;VAR=${VAR#*,}
    WPHONE[$COUNT]=${VAR%%,*}   ;VAR=${VAR#*,}
    EMAIL[$COUNT]=${VAR%%,*}    ;VAR=${VAR#*,}
    WEBURL[$COUNT]=${VAR%%,*}   ;VAR=${VAR#*,}

        (( COUNT++ ))

done

IFS=${OLDIFS}                   #Put back the original IFS 

for i in $(seq 0 $(( ${#FNAME[@]} -1 ))) ;do
    echo "${FNAME[$i]} ${LNAME[$i]} ${COMPANY[$i]} ${STREET[$i]} ${CITY[$i]} ${COUNTY[$i]} ${STATE[$i]} ${ZIP[$i]} ${HPHONE[$i]} ${WPHONE[$i]} ${EMAIL[$i]} ${WEBURL[$i]}" 

done

exit
