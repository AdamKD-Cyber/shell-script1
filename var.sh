echo -e "\n------------ Authentication Required -------------\n"

read -rp "Insert Username: " username
read -rsp "Insert Password: " password

echo -e "\n\n------------ Your Login Information --------------\n"

hidden=""
for (( i=0; i<${#password}; i++ )); do
    hidden+="*"
done

echo "Username: $username"
echo "Password: $hidden"

while true; do
    read -rp "Would you like to save a record? (Y/N): " ans
    ans=${ans^^}

    if [[ "$ans" == "Y" ]]; then
        echo -e "$username\n$password\n" > loginInfo.txt
        echo -e "\n-------------- Login Info Saved Successfully --------------\n"
        break
    elif [[ "$ans" == "N" ]]; then
        echo -e "\n\nYour login info were removed from the system.\n"
        break
    else
        echo "Please respond only with Y or N."
    fi
done
