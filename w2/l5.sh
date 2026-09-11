#!/bin/bash
##################
#Problem: Prompt the user with 'Do you want to proceed with disk wipe? [y/N]'. Accept 'y', 'Y', 'yes', 'YES' as affirmative; everything else as negative abort.
##################

read -r -p "D you want to procced with disk wipe? [y/n]" a
if [[ "$a" =~ ^([yY]|[yY][eE][sS])$ ]]; then 
	 echo "Proceeding ..."
else
	 echo "abort"
fi
