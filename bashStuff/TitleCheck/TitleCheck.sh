#Nicholas Carnival
#TitleCheck.sh
#Due: April 5th 2019
#Words that are not capitalized
#a, an, in, out, to, from, for, the, of

#a for loop that iterates over the users input

echo "Enter a title: "
#the first word must be capatilized

read line

#echo "'${line}'"
for word in _$line 
do
    #Checks case 
    case ${word:0:1} in
    #This switch statement could be cleaned up, but I ran out of time
    [A-Z]*)
        case $word in
            a|an|in|out|to|from|for|the|of) 
                ;;
            *)
                echo "'$word' should NOT be capitalized."
                ;;
        esac
    ;;
    [a-z]*)
        case $word in
            a|an|in|out|to|from|for|the|of) 
                ;;
            *)
                echo "'$word' should be capitalized."
                ;;
        esac
    ;;
    _*)
        if [[ ${word:1:1} =~ [a-z] ]]
        then
            echo "'${word:1:1}' should be capitalized." 
        fi
            
    ;;
esac
done
