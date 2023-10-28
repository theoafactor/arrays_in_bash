#!/bin/bash

num=1

while [ $num -lt 10 ]
do
    echo $num

    if [[ $num == 5 ]]
    then
        break
    fi

    ((num++))
done