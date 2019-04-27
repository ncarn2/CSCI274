#Nicholas Carnival
#Lite Lifting

#all of these require - 1 because the echo adds a '\n' 

#number of characters in the file
echo 'This file has' "$(( $( wc -c < $1 ) - 1 ))" 'characters in it.'

#number of chars excluding newline
echo 'This file has' "$(( $(tr -d '\n' < $1 | wc -c) - 1 ))" 'characters not counting newline.'

#number of emty lines
echo 'This file has' "$(( $(wc -l < $1) - $(sed '/^$/d' $1 | wc -l) ))" 'empty lines.'

#alphanumeric characters
echo 'This file contains' "$( cat $1 | tr -cd [:alnum:] | wc -c )" 'alphanumeric characters.'
#fourth  word third line
echo 'The 4th word of the 3rd line of text is' "/$( sed -n 3p $1 | awk '{print $4}' )/"

#Capital Idea Logic
grep -q 'CapitalIdea' <<< "$( tr '\n' ' ' < $1 | tr -d ' ' )" 
if [ $? -eq 0 ];then
    cat $1 | tr '[:upper:]' '[:lower:]' > $1.lc
fi

