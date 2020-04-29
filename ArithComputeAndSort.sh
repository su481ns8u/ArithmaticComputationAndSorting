#!/bin/bash -x

declare -A ArithOps

echo "Enter three numbers:"
read -p "a: " a
read -p "b: " b
read -p "c: " c

d=$(($a + $b * $c))
e=$(($a * $b + $c))
f=$(($c + $a / $b))
g=$(($a % $b + $c))

ArithOps[o1]=$d
ArithOps[o2]=$e
ArithOps[o3]=$f
ArithOps[o4]=$g

echo ${ArithOps[@]}
echo ${!ArithOps[@]}
