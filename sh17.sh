#!/bin/bash
#Program
#	Use ping command to check the network'PC state
#History
#	2018/10/24	cpt	first release

network="192.168.10"

for sitenu in $(seq 1 100)
do
	# -c 请求次数， -w 等待时间
	ping -c 1 -w 1 ${network}.${sitenu} &> /dev/null && result=0 || result=1
	
	if [ "$result" == 0 ];then
		echo "Server ${network}.${sitenu} is UP."
	else
		echo "Server ${network}.${sitenu} is DOWN."
	fi
done
