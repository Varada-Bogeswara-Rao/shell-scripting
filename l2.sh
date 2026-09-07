#!/bin/bash
##########################################################
#Problem: Create a script that accepts exactly 3 arguments. If fewer or more are passed, print an error and exit with code 1. If valid, print the arguments in reverse order ($3, $2, $1).
###########################################################
 echo "$#"
 if (("$#==3")); then
	echo "{3} {2} {1}"
else 
	echo "error need exactly 3 args"
	exit 1
fi

