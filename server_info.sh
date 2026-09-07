#!/bin/bash
##########################################################
# - Description : Lab 1: Basic Server Greeting & Architecture Printout
# - Problem : Write a script `server_info.sh` that takes one argument (the server environment name, e.g., 'Prod              uction') and prints the hostname, kernel version, current user, and architecture using standard system commands.
# - Author : Bunny
# - Date & Ver : 26-aug-2026 , v1.0
###########################################################


environment="$1"

echo "hostname : $(hostname)"
echo "kernal version : $(uname -r)"
echo "current user : $(whoami)"
echo "Arch : $(uname -m)"
echo "Environment : $environment"




