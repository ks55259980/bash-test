#!/bin/bash
#Program
#	User input dir name, i find the permission of files.
#History
#	2018/10/24	cpt	first release

#1 file is exist or not
read -p "please input a directory : " dir
if [ "$dir" == "" -o ! -d "$dir" ];then
	echo "The $dir is not exit in your system."
	exit 1
fi

#2 output permission
filelist=$(ls $dir)
for filename in $filelist
do
	perm=""
	test -r "$dir/$filename" && perm="$perm readable"
	test -w "$dir/$filename" && perm="$perm writeable"
	test -x "$dir/$filename" && perm="$perm executable"
	echo "The file $dir/$filename's permission is $perm"
done
