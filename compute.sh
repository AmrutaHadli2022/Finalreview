#!/bin/bash -x
declare -A computation
read -p "Enter a value: " a
read -p "Enter b value: " b
read -p "Enter c value: " c

compute1=$(( $a + $b * $c ))
compute2=$(( $a * $b + $c ))
compute3=$(( $c + $a / $b ))
compute4=$(( $a % $b + $c ))

#echo $compute1;
#echo $compute2;
#echo $compute3;
#echo $compute4;
computation[pbm1]=$compute1
computation[pbm2]=$compute2
computation[pbm3]=$compute3
computation[pbm4]=$compute4
echo "Dictionary into arrays "
echo ${computation[@]}

echo "Sorting Descending order"
array=($(printf '%d\n' "${computation[@]}" | sort -nr ))
echo ${array[@]}

echo "Sorting Ascending order"
arr=($(printf '%d\n' "${computation[@]}" | sort -n ))
echo ${arr[@]}
