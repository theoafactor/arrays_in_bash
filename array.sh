#!/bin/bash

declare -a users
declare -a new_users

users=("James" "John Jacob" "Jerry" "Abigail" "Andrew")
# users[2]="Joseph"

# users=("Anna" "${users[@]}")

# users=("${users[@]}" "Jones")

new_users=("Matt" "Jade")

users+=("Matt Dave")


echo "${#users[@]}"
# for i in "${users[@]}"
# do
#     echo $i
# done

for (( i=0; $i < ${#users[@]}; i++ ))
do
    echo "${users[$i]}"
done





