#!/bin/bash
#5/7/15
#class

while [ ! -z $1 ] ;do
    echo "Arg is $1"
    shift
done

#Example of run and output
#[root@804266456 labs]# ./shift.sh arg1 arg2 arg3 arg4
#Arg is arg1
#Arg is arg2
#Arg is arg3
#Arg is arg4

