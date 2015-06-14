#!/bin/bash
foodash=
echo ${foodash:-"substitute value if unset"}
echo $foodash

foodash=bardash
echo ${foodash:-"substitute value if unset"}
echo $foodash

fooequals=
echo ${fooequals:-"default value if unset"}
echo $fooequals
fooequals=barequals
echo ${fooequals:-"default value if unset"}
echo $fooequals



