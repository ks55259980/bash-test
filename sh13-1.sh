#!/bin/bash
#Program
#	Repeat question until user input correct anser.
#History
#	2018/10/24	cpt	first release

until [ "$yn" == "yes" -o "$yn" == "YES" ]
do
	read -p "Please input yes/YES to stop this program : " yn
done
echo "OK! you input the correct answer."
