#!/bin/bash
######################
#Problem: Write a script that takes two semantic versions (e.g. `1.14.2` and `1.15.0`) and uses Bash regex and integer comparisons to determine if Version A is older, identical, or newer than Version B.
######################

# regex='^[0-9]+\.[0-9]+\.[0-9]+$'  ---> here as we didnt use () so BASH_REMATCH dosen't work  
# regex='^([0-9]+)\.([0-9]+)\.([0-9]+)$'



regex='^([0-9]+)\.([0-9]+)\.([0-9]+)$'
[[ "$1" =~ $regex ]] || echo "invalid arg1 "$1" for semvar"

majA=${BASH_REMATCH[1]}; 
minA=${BASH_REMATCH[2]};
patchA=${BASH_REMATCH[3]};
[[ "$2" =~ $regex ]] || echo "invalid arg2 "$2" for semvar"
majB=${BASH_REMATCH[1]}; 
minB=${BASH_REMATCH[2]};
patchB=${BASH_REMATCH[3]};
if (( majA > majB )); then echo " "$1" is newer version "
elif (( majA < majB )); then echo " "$2" is newer version "
elif (( minA > minB )); then echo " "$1" is newer version "
elif (( minA < minB )); then echo " "$2" is newer version "
elif (( patchA > patchB )); then echo " "$1" is newer version "
elif (( patchA < patchB )); then echo " "$2" is newer version "
else echo "same version"
fi
