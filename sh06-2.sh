#!/bin/bash
#program
#	this program shows the user's choice
#History
#2018/10/21 cpt first release

read -p "Please input (Y/N): " inputString 

if [ "$inputString" == "Y" ] || [ "$inputString" == "y" ];then	echo "OK, continue"
	exit 0
fi

if [ "$inputString" == "N" ] || [ "$inputString" == "n" ];then
	echo "no,interrupt"
	exit 0
fi

echo "i dont konw what your choice is " && exit 2

