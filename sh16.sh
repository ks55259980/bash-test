#!/bin/bash
#Program
#	Use id, finger command to check system account's information.
#History
#	2018/10/24	cpt	first release

users=$(cut -d ':' -f1 /etc/passwd)
for username in $users
do
	id $username
	finger $username
done
