#!/bin/bash

File="config"

Temp_file="temp_config"

if [[ -f $Temp_file ]]
then
    rm -f $Temp_file
fi

touch $Temp_file

while read line
do
    check_use_ssh=$( echo $line | grep useSSH )
    if [[ $check_use_ssh ]]
    then
        echo "useSSH=no">>$Temp_file 
    else
        echo $line>>$Temp_file
    fi
done < $File

rm -f $File
mv $Temp_file $File