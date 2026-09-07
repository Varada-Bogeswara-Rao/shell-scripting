#!/bin/bash
##############################
# Problem: Write a script that executes `ping -c 1 -W 2 "$1" > /dev/null 2>&1`. Capture `$?` and print whether the host is REACHABLE (exit 0) or UNREACHABLE (exit 2). Pass through the status code.
##############################
target="$1"
ping -c 1 -W 2 "$target" > /dev/null 2>&1
status=$?
if (("$status" == "0")); then
	echo "Host is reachable Status: $status"
	exit 0
else 
	echo "Host is unreachable Status: $status"
	
fi

 exit 0

