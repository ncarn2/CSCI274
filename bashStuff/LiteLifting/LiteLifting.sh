#Nicholas Carnival
#Lite Lifting

numChars=$(wc -c < $1)

echo 'This file has' "${numChars}" 'characters in it.'

#some type of wc piped into something
numCharsNoLine=$(wc -c < $1)

echo 'This file has' "${numCharsNoLine}" 'characters not counting newline.'

numEmptyLines=$(wc -c |tr -d '\n' < $1)
echo 'This file has' "${numEmptyLines}" 'empty line.'

numAlphaCharacters=$(wc -c < $1 )
echo 'This file contains' "${numAlhpaCharacter}" 'alphanumberic characters.'

numChars=$(wc -c < $1)
echo 'The 4th word of the 3rd line of text is' "/${numChars}/"
