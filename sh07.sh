#!/bin/bash
#Program
#	Program shows the script name, parameters..
#History
#	2018/10/21	cpt	First release

echo "The script name is ==> $0"
echo "Total paramete number is ==> $#"
# if parameters.lenth < 2 
[ "$#" -lt 2 ] && echo "The number of parameters is less than 2 . Program Stop"  \
	&& exit 0
echo "Your whole parameter is ==> $@"
echo "The 1st parameter ==> $1"
last=$(eval "echo \$$#")
echo "The last parameter ==> $last"
