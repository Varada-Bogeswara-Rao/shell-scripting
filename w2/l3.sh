#!/bin/bash
#########################
#Problem: Accept a TCP port number from argument 1. Check if the port is an integer and falls in the valid range 1 to 65535.
#########################

port="${1:?Enter a number}"

if (($port<=65535 && port>=1)); then
	echo "VAlid POrt"
else
	echo "Invalid Port"
fi
