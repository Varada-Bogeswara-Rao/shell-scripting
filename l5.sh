#!/bin/bash
##########################
# Problem: Accept two integer arguments. Compute and display their sum, difference, product, integer quotient, and remainder using `$(( ... ))`.
##########################
 
A=$1
B=$2

echo -e "sum:"$((A+B))" \ndiff:"$((A-B))""
# remaining a*b , a/b ,a%b 
