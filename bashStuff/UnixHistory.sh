#Nicholas Carnival 
mkdir ResearchUnix && echo "1972" > ResearchUnix/Year
cd ResearchUnix && mkdir BSD Commercial
cd BSD && mkdir FreeBSD NextStep && echo "1977" > Year && echo "1993" > FreeBSD/Year
cd NextStep && mkdir MacOSX && echo "1988" > Year && echo "2002" > MacOSX/Year
cd ../../Commercial && echo "1984" > Year && mkdir Solaris && echo "1991" > Solaris/Year

