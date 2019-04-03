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
    [A-Z]*)
    echo "$word begin with a uppercase letter."
    ;;
    [a-z]*)
    echo "$word begin with a lowercase letter."
    ;;
    _*)
    echo "$word begins with underscore"
    ;;
esac
done
