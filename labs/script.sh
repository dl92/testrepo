#!/bin/bash

echo ${0}
#echo ${1}
#echo ${2}
#echo ${3}
#echo ${10}
#echo ${99}

SCRIPTNAME=${0}
NAME=$1
echo ${SCRIPTNAME}
echo ${NAME}

#if test ${NAME} = bob ;then
#if test "${NAME} = bob" ;then
#	echo "Hello Bob"
#else
#	echo "Hello someone else"
#fi

#if [[ ${NAME} = dlane ]] ;then
if [[ "${NAME} = dlane" ]] ;then
	echo "Hello dlane"
else
	echo "Hello someone else"
fi


if grep root /etc/passwd ;then
	echo "root exists"
fi
#echo "Please enter your name"
#read NAME

#echo "Your name is ${NAME}"


