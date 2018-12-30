#!/bin/bash
#Program
#	Program shows the script name, parameters..
#History
#	2018/10/21	cpt	First release

echo "Total paramete number is ==> $#"
echo "Your whole parameter is ==> $@"

# the first shift
shift

echo "Total parameter number is ==> $#"
echo "Your whole parameter is ==> $@"

# the second shift of three parameter
shift 3


echo "Total parameter number is ==> $#"
echo "Your whole parameter is ==> $@"

