#!/bin/bash
#Program
#	Using netstat and grep to detect WWW,SSH,FTP and MAIL service.
#History
#2012/10/22	cpt	first release

#1 
echo "Now, I will detect your linux server's services!"
echo -e "The www,ftp,ssh and mail will be detect! \n"

#2 
testing=$(netstat -tuln | grep ":80 ")
if [ "$testing" != "" ]; then
	echo "WWW is running in your system"
	echo $testing
fi


testing=$(netstat -tuln | grep ":22 ")
if [ "$testing" != "" ]; then
	echo "SSH is running in your system"
	echo $testing
fi


testing=$(netstat -tuln | grep ":21 ")
if [ "$testing" != "" ]; then
	echo "FTP is running in your system"
	echo $testing
fi


testing=$(netstat -tuln | grep ":25 ")
if [ "$testing" != "" ]; then
	echo "MAIL is running in your system"
	echo $testing
fi
