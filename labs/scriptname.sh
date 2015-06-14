#!/bin/bash
SCRIPTNAME=${0##*/}
echo $SCRIPTNAME

#both of these have the same result
#Grant prefers using the one above - pattern matching



SCRIPTNAME2=$(basename "$0")
echo $SCRIPTNAME2
exit
