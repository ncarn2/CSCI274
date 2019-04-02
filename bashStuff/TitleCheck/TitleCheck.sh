#Nicholas Carnival
#TitleCheck.sh
#Due: April 5th 2019
#Words that are not capitalized
#a, an, in, out, to, from, for, the, of

#a for loop that iterates over the users input

echo "Enter a title: "
#the first word must be capatilized

read line

echo "'${line}'"
for token in _${line}; do
    echo $token
done
