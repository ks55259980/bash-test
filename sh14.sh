#!/bin/bash
#Program
#	Use loop to calculate "1+2+3...+100" result
#History
#	2018/10/24	cpt	first release

i=0
result=0
while [ "$i" != "100" ]
do
	i=$(($i+1))
	result=$(($result+$i))
done
echo "The result of "1+2+3..+100" is ==> $result "

