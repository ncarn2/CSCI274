#Author: Nicholas Carnival
#Due: 03/22/19

while [[ "$input" != "QUIT" && "$input" != "quit" ]]
do
    echo "Pick a quote-sayer from:"
    #displays all directories in the current working directory
    ls -1 */ | sed 's#/##'
    echo "... or enter QUIT to exit the script. " 
    read input
    #if the directory exists, we should cat its quote
    if [ -d $input ]; then 
        echo  "$input said..."
        cat $input/quote.txt
        echo
    elif [[ $input = "quit" || $input = "QUIT" ]]; then
        exit 0
    elif [ ! -d "$input" ]; then
        exit 7
    fi
    #if the directory does not exist, exit status 7 
done
