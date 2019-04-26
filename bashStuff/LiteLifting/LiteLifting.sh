#Nicholas Carnival
#Lite Lifting

#number of characters in the file
numChars=$(wc -c < $1)
echo 'This file has' "${numChars}" 'characters in it.'

#number of chars excluding newline
numCharsNoLine=$( tr -d '\n' < $1 | wc -c)
echo 'This file has' "${numCharsNoLine}" 'characters not counting newline.'

#total number of lines
numTotalLines=$(wc -l < $1 )
#number of non empty lines
numNonEmptyLines=$(sed '/^$/d' $1 | wc -l)
#number of emty lines
numEmptyLines=$(( numTotalLines - numNonEmptyLines ))
echo 'This file has' "${numEmptyLines}" 'empty lines.'

#alphanumeric characters
numAlphaCharacters=$(sed 's/[^a-zA-Z0-9]//g' $1 | tr -d '\n' |  wc -c) 
echo 'This file contains' "${numAlphaCharacters}" 'alphanumeric characters.'

#fourth  word third line
fourthWord=$(sed -n 3p $1 | awk '{print $4}')
echo 'The 4th word of the 3rd line of text is' "/${fourthWord}/"

#Capital Idea Logic

