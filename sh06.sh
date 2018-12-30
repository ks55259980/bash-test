#!/bin/bash
#program
#	this program shows the user's choice
#History
#2018/10/21 cpt first release

read -p "Please input (Y/N): " inputString 
[ "$inputString" == "Y" -o "$inputString" == "y" ] && echo "ok, continue" && exit 0
[ "$inputString" == "N" -o "$inputString" == "n" ] && echo "interrupt" && exit 1
echo "i dont konw what your choice is " && exit 2
