#!/bin/bash
##############
#Problem: Given a path, determine if it is a symbolic link (`-L`). If it is, check whether the target it points to actually exists (`-e`). If the target does not exist, report 'BROKEN SYMLINK' and exit 2.
##############

if [ -L "$1" ]; then
       echo "Link exists"
       if [ -e "$1" ]; then
	       echo "dest is valid"
	else
		echo "dest is invalid"
	fi
else 
	echo "link dosent exist"
fi

