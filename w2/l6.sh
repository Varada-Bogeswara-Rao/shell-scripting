#!/bin/bash
#################
#Problem: Write a script `validate_email.sh` that checks if an email string matches the pattern `^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$` using `[[ $email =~ $regex ]]`.
#################

email="$1"

regex='^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'

if [[ $email =~ $regex ]]; then
	echo "Valid"
else
	echo "Invalid"
fi

