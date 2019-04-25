#Nicholas Carnival
#Lite Lifting

numChars=$(wc -c < $1)

echo 'This file has' "${numChars}" 'characters in it.'

#some type of wc piped into something
numCharsNoLine=$()
echo 'This file has' "${numCharsNoLine}" 'characters not counting newline.'
