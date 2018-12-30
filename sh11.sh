#!/bin/bash
#Program
#	You input your demobilization date, I calculate how many days before you demeobilize.
#History
#2018/10/22	cpt	first release

#1 
echo "This program will try to calcualte: "
echo "How many days before your demobilization date..."
read -p "Please input your demobilization date ( YYYYMMMDD ex>20181022 ): " date2

#2
date_d=$(echo $date2 | grep "[0-9]\{8\}")
if [ "$date_d" == "" ]; then
	echo "You input the wrong date format..."
	exit 1
fi

#3
declare -i date_dem=`date --date="$date2" +%s` #退伍日期妙数
declare -i date_now=`date +%s`			#现在日期妙数
declare -i date_total_s=$(($date_dem - $date_now)) #转为日期
declare -i date_d=$(($date_total_s/60/60/24))	   #判断是否已经退伍
if [ "$date_total_s" -lt "0" ]; then
	echo "You had been demobilization before: " $((-1*$date_d)) " ago"
else
	declare -i date_h=$(($(($date_total_s-$date_d*60*60*24))/60/60))
	declare -i date_h_1=$(($date_total_s/60/60%24))
	echo "You will demobilize after $date_d days and $date_h hours."
	echo "You will demobilize after $date_d days and $date_h_1 hours."
fi
