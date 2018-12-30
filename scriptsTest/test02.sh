#!/bin/bash
#Program
#	input your birthday , echo how long to happy
#History
#	2018/10/25	cpt	first release

read -p "please input your birthday ex> 2018/10/25: " birthday
declare -i date_birthday=`date --date="$birthday" +%s`
declare -i date_now=`date +%s`
declare -i seconds_total=$(($date_birthday-$date_now))
declare -i days=$(($seconds_total/60/60/24))
echo "there is $(($days+1)) days to your birthday"
