#!/bin/bash
#program
#	this program shows the user's choice
#History
#2018/10/21 cpt first release

read -p "Please input (Y/N): " inputString 

if [ "$inputString" == "Y" ] || [ "$inputString" == "y" ];then	
	echo "OK, continue"

elif [ "$inputString" == "N" ] || [ "$inputString" == "n" ];then
	echo "no,interrupt"
else
	echo "i dont konw what your choice is "
fi
