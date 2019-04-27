#Nicholas Carnival
#Lite Lifting

#number of characters in the file
echo 'This file has' "$(( $( wc -c < $1 ) - 1 ))" 'characters in it.'

#number of chars excluding newline
echo 'This file has' "$(( $(tr -d '\n' < $1 | wc -c) - 1 ))" 'characters not counting newline.'

#number of emty lines
echo 'This file has' "$(( $(sed '/^$/d' $1 | wc -l) - (wc -l < $1) - 1 ))" 'empty lines.'

#alphanumeric characters
echo 'This file contains' "$(( $(sed 's/[^a-zA-Z0-9]//g' $1 | wc -c) - 1 ))" 'alphanumeric characters.'

#fourth  word third line
echo 'The 4th word of the 3rd line of text is' "/$( sed -n 3p $1 | awk '{print $4}' )/"

#Capital Idea Logic

