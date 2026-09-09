#!/bin/bash
#######################################
#Problem: Write a script `check_file.sh` that takes a file path as an argument. Check if it exists AND has a size greater than 0 bytes using `[ -s "$1" ]`. If not, exit with code 1.
#######################################

file="$1"
if [ -s $1 ]; then
	echo  "$file exists" 
else 
	echo  "$file  dosen't exist"
fi
