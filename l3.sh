#!/bin/bash
####################################
#Problem: Prompt the user for Username, Role (e.g., DBA, DevOps), and PIN code (masked with -s). Output a summary confirming registration.
#######################################

username=$username
role=$role
read -p "enter username : " username

read -p "enter role : " role
read -s -p "enter pin :" pin
echo""

echo "user $username registered with role $role"



