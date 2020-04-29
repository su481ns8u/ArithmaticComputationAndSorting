#!/bin/bash -x

declare -A ArithOpsDict
declare -a ArithOpsArr

echo "Enter three numbers:"
read -p "a: " a
read -p "b: " b
read -p "c: " c

d=$(($a + $b * $c))
e=$(($a * $b + $c))
f=$(($c + $a / $b))
g=$(($a % $b + $c))

ArithOpsDict[o1]=$d
ArithOpsDict[o2]=$e
ArithOpsDict[o3]=$f
ArithOpsDict[o4]=$g

count=0
for i in ${!ArithOpsDict[@]}
do
	ArithOpsArr[count++]=${ArithOpsDict[$i]}
done

echo ${ArithOpsArr[@]}
