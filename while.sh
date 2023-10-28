while read line
do
    current_line=$(echo $line)
    first_field=$(echo $current_line | cut -d" " -f1)
    if [[ $first_field == "james" ]]
    then
        echo "User found"
    fi
done < "users.txt"