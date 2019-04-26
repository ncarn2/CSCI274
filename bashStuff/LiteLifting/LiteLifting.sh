#Nicholas Carnival
#Lite Lifting

numChars=$(wc -c < $1)

echo 'This file has' "${numChars}" 'characters in it.'

#number of total lines
numTotalLines=$(wc -l < $1 )

#some type of wc piped into something
numCharsNoLine=$( tr -d '\n' < $1 | wc -c)

#the number of lines excluding empty lines
numNonEmptyLines=$(sed '/^$/d' $1 | wc -l)

echo 'This file has' "${numCharsNoLine}" 'characters not counting newline.'

#use sed to find all '\n' or use awk
numEmptyLines=$(( numTotalLines - numNonEmptyLines ))
echo 'This file has' "${numEmptyLines}" 'empty line.'

numAlphaCharacters=$(wc -c < $1 )
echo 'This file contains' "${numAlhpaCharacter}" 'alphanumberic characters.'

fourthWord=$(wc -c < $1)
echo 'The 4th word of the 3rd line of text is' "/${fourthWord}/"
