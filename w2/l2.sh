#!/bin/bash
###############################
#Problem: Write a script `test_perms.sh` that checks if the invoking user has read, write, and execute permissions on a target directory.
###############################

TAR_DIR="${1:? ERROR:mention name of a directory}"

	
	if [ -x "$TAR_DIR" ]; then
		echo "Exec : YES"
	else
		echo "Exec : NO"
	fi
	if [ -r "$TAR_DIR" ]; then
		echo "Read : YES"
	else
		echo "Read : NO"
	fi

	if [ -w "$TAR_DIR" ]; then
		echo "write : YES"
	else
		echo "write : NO"
	fi

