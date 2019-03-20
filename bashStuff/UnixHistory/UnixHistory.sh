#!usr/bin/env bash   

mkdir ResearchUnix
cd ResearchUnix && mkdir BSD, Commercial
cd BSD && mkdir FreeBSD, NextStep
cd NextStep && mkdir MacOSX
cd ../BSD && mkdir Solaris

#recursively puts the year file into each dir
echo 

#Year data
ResearchUnix = 1972
Commercial = 1984
BSD = 1977
Solaris = 1991
FreeBSD = 1993
NextStep = 1988
MacOSX = 2002
