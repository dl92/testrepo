#!/bin/bash

VAR="this.is.a.dotted.line"

for i in {1..1000} ;do
#echo $VAR | awk -F. '{print $4}'  #to get dotted
echo $VAR | awk -F. '{print $5}'  
echo $VAR | awk -F. '{print $5}'  
#VAR2=(echo "$VAR" |awk -F. '{print $5}'
VAR2=${VAR%.*}
VAR2=${VAR%%.*}
done


