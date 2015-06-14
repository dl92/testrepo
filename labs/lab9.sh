#!/bin/bash
#CS225 Lab 9 User Input
#Debbie Lane
#5/7/15
#

#clear
set -o nounset
SCRIPTNAME=$(basename $0)
#SCRIPTNAME=$($0##*/)
while getopts :dvhn:l: opt ;do
    case $opt in
        d) set -x ; echo "debugging turned on" ;;
        v) VERBOSE=true ;;
        h) echo "$SCRIPTNAME Options:" 
                    echo -e  "-d \t \t to turn on debugging"
                    echo -e "-v \t \t for Verbose Output"
                    echo -e "-h \t \t for this Help text"
                    echo -e "-n <name> \t to take a name argument" 
                    echo -e "-l <dir> \t to obtain a listing of the specified Directory"
                    echo -e "All other options are invalid, and this program will end" ;;
        n) NAME=$OPTARG; echo  "Name is $NAME" ;;
        l) DIR=$OPTARG; read -n1 -p "You entered Directory name $DIR.  Do you want to continue [Y/N]? " answer 
            case $answer in
            Y | y) echo ;;
#                    echo Continuing ;;
            N | n) echo
                    echo OK, goodbye
                    exit;;
            esac
#            echo "This is the end of the script"
                if [ -d $DIR ] ;then
                    echo "Below is the listing of the $DIR directory"
                    cd $DIR
                    ls -h
                else
                    echo "The $DIR directory does not exist"
                fi ;;



        *)  echo "${SCRIPTNAME} unknown argument"; /root/labs/lab9.sh -h  ;exit ;;

    esac


done

echo $OPTIND
shift $((OPTIND -1))
#echo "1 is $1"
exit
