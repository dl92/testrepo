#!/bin/bash
#CS225 Lab3 - More Conditionals
#Debbie Lane
#4/16/15
#
#Check a users ID and if they're root 
#Then display a message saying it's insecure to run this script as root.
#If they are not root
#Then get their home directory from the /etc/password file
#and display the size of the contents of it.
#
#set -o nounset
echo $UID
if [[ "${UID}" = 0 ]] ;then
     echo "It is insecure to run this script as root" 
else
     VARHOME=$(grep "^$USER" /etc/passwd | awk -F: '{print $6}')

     #use awk with -F'\t' TAB Field delimiter OR cut -f1 where default delimiter is a tab )
     VARSIZE=$(du -sh  $VARHOME | awk -F'\t'	'{print $1}')
     echo "The size of "${USER}\'s" Home Directory ${VARHOME} is ${VARSIZE}"
fi
exit

