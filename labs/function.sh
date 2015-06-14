#!/bin/bash


test(){
    if [[ $1='bob' ]] ;then
        return 0
    else
        return 1
    fi
}

if test bob ;then
    echo "user is bob"
else
    echo "user is not bob"
fi
