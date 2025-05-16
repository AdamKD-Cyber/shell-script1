echo -e "\n------------ Authentication Required -------------\n"
read -p "Insert Username: " username
read -sp "Insert Password: " password
echo -e "\n\n------------ Your Login Information --------------\n"
hidden=""
for (( i=0; i<${#password}; i++ )); do
hiddenP+="*"
done
echo "Username: $username"
echo "Password: $hiddenP"
read -p "Would you like to save a record? (Y/N): " ans
while true; do
if [[ "$ans" == "Y" || "$ans" == "y" ]]; then
touch loginInfo.txt && echo -e "$username\n$password\n" > loginInfo.txt 
echo -e "\n-------------- Login Info Saved Successfully --------------\n"
break
elif [[ "$ans" == "N" || "$ans" == "n" ]]; then
echo -e "\n\nYour login info were removed from the system.\n"
break
else
read -p "Misunderstood - Respond only with (Y/N): " ans
fi
done
