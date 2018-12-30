#!/bin/bash
#Program
#	Try do calculate 1+2+3..+$(input)
#History
#	2018/10/25	cpt	first release

read -p "Please input a number , I will count for 1+2+...+your input : " inputNumber

s=0
for(( i=1; i<=$inputNumber;i=i+1))
do
	s=$(($s+$i))
done

echo "The result of '1+2+3...+$inputNumber' is ==>$s"
