#!/bin/bash
#Program
#	User function to repeat information
#History
#	2018/10/23	cpt	first release

function printit(){
	echo -n "Your choice is " #加上 -n 可以不断行继续在同一行显示
}

echo "This program will print your selection !"
case $1 in
	"one")
		printit;
		echo $1 | tr 'a-z' 'A-Z'
		;;
	"two")
		printit; echo $1 | tr 'a-z' 'A-Z'
		;;
	"three")
		printit; echo $1 | tr 'a-z' 'A-Z'
		;;
	*)
		echo "Usage $0 {one|two|three}"
		;;
esac

