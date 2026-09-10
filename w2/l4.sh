#!/bin/bash
############################
#Problem: Write a script that takes up to 2 arguments. Use `[ -z ... ]` and `[ -n ... ]` to report which arguments were provided and which are empty.
############################

[ -z "$1" ] echo " arg1 is empty" || echo ""arg1 is defined "$1"

[ -n "$2" ] echo " arg2 is defined "$2" " || echo ""arg2 is empty
