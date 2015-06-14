#Function Library
hello() {
    echo "hello world"
}

MONTH() {
#case local $MONTH in
case $MONTH in
    01|1| 1) echo Jan ;;
    02|2| 2) echo Feb ;;
    03|3| 3) echo Mar ;;
    04|4| 4) echo Apr ;;
    05|5| 5) echo May ;;
    06|6| 6) echo Jun ;;
    07|7| 7) echo Jul ;;
    08|8| 8) echo Aug ;;
    09|9| 9) echo Sep ;;
    10) echo Oct ;;
    11) echo Nov ;;
    12) echo Dec ;;
esac
}

#takes a number and determines if it is a Social Security Number
# can include no space, or space or dash 555-22-1234
check_ssn() {
    VAL=$1
    if [[ $VAL =~ (^[[:digit:]]{3}[- ]?[[:digit:]]{2}[- ]?[[:digit:]]{4}$) ]] ;then
#    if [[ $VAL =~ (^[0-9]{3}[- ]?[0-9]{2}[- ]?[0-9]{4}$) ]] ;then
        return 0
echo $VAL
    else
        return 1
    fi
}

#Takes a number and determines if it is a phone number can include ( no space, or space or dash or (areacode)
check_pn() {
    VAL=$1
    if [[ $VAL =~ (^\(?[2-9][0-9]{2}\)?( |-|\.)?[0-9]{3}( |-|\.)?[0-9]{4}$) ]] ;then
        return 0
    else
        return 1
    fi
}

#Takes a number and determines if it is a Credit Card Number CC like 1234-1234-1234-1234 - Can include dash or space or no space
#echo "1234-1234-1234-1234" | egrep -o '(^[[:digit:]]{4}[- ]?[[:digit:]]{4}[- ]?[[:digit:]]{4}[- ]?[[:digit:]]{4}$)'
check_ccn() {
    VAL=$1
    if [[ $VAL =~ (^[[:digit:]]{4}[- ]?[[:digit:]]{4}[- ]?[[:digit:]]{4}[- ]?[[:digit:]]{4}$) ]] ;then
        return 0
    else
        return 1
    fi
}


#Takes a number and determines if it is an IPv4 address - 0.0.0.0 - 255.255.255.255
check_ip() {
     VAL=$1
     #    if [[ $VAL =~ (^[0-9]$)?|(^[0-9]{2}$)?|(^[0-1][0-9][0-9]$)+|(^2[0-4][0-9]$)+|(^[2][5][0-5]\.$)+ ]] ;then
     if [[ $VAL =~ (25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])+\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])+\.(25[0-5]|2[0-4][0-9]|1[        0-9][0-9]|[1-9]?[0-9])+\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])+ ]] ;then
         return 0
     else
         return 1
     fi
}

