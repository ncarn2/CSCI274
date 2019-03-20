#display current directory
ls -d */
echo "Type a directory name or QUIT: " 
read input
if [[ $input == "QUIT" ||  $input == "quit" ]]; then
    echo "we not doing it"
else
    echo $input 
    #if the directory exists, we should cat its quote
    cat $input/quote.txt
    #if the directory does not exist, exit status 7 
fi

