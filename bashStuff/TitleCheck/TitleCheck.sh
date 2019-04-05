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
    #Capitalizes first word no matter what
    _*)
        if [[ ${word:1:1} =~ [0-9] ]]
        then
            exit 1
        fi

        if [[ ${word:1:1} =~ [a-z] ]]
        then
            echo "'${word:1:1}' should be capitalized." 
        fi
    ;;
    [A-Z]*)
        if [[ "$word" =~ ^(A|An|In|Out|To|From|For|The|Of)$ ]]; then
            echo "'$word' should NOT be capitalized."
        fi
    ;;
    [a-z]*)
        if ! [[ "$word" =~ ^(a|an|in|out|to|from|for|the|of)$ ]]; then
            echo "'$word' should be capitalized."
        fi
    ;; 
esac
done
