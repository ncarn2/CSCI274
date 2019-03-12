#display current directory
ls -d */
echo "Type a directory name or QUIT: " 
read input
if [[ $input == "QUIT" ||  $input == "quit" ]]; then
    echo "we not doing it"
else
    echo "we doing it"
fi

