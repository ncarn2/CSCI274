#!/usr/bin/env bash
# Make some directory structures (could fail if directories already exist)
mkdir -p Dessert/Cobbler
mkdir Dessert/Pie	# -p option not necessary, because Dessert directory should exist

# Make some regular text files called Filling in each directory with some contents
echo "Cherry" >> Dessert/Cobbler/Filling
echo "Apple" >> Dessert/Pie/Filling

echo "The Dessert directory structure looks like this (ls -R Dessert):"
ls -R Dessert

echo "=============================="
echo "What is your favorite type of Cobbler?"
read COBBLER
echo $COBBLER >> Dessert/Cobbler/Filling

echo "What is your favorite type of Pie?"
read PIE
echo $PIE >> Dessert/Pie/Filling

echo
echo "The good cobbler fillings are:"
cat Dessert/Cobbler/Filling
