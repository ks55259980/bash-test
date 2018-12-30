#!/bin/bash
#Program
#	User function to repeat information.
#History
#	2018/10/24	cpt	first release

function printit(){
	echo "Your choice is $1"
}

echo "This program will print your selection!"
case $1 in
	"one")
		printit "ONE"
		;;
	"two")
		printit "TWO"
		;;
	"three")
		printit "THREE"
		;;
	*)
		echo "Usage $0 (one|two|three)"
		;;
esac
