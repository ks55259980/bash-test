#!/bin/bash
#Program
#	user input a file, program will check the following:
#	1. exit? 2.file or directory 3. file permissions
#History
#2018/10/21 cpt First release
 
echo -e "Please input a filename, program will check the fielname's type and \
permission. \n\n"

#1 test the input string is none or not
read -p "Input a filename: " filename
test -z $filename && echo "You must input a filename" && exit 0

#2 test the string is exit or not 
test ! -e $filename && echo "The filename '$filename' dont exit" && exit 0

#3 test string type
test -f $filename && filetype="regulare file"
test -d $filename && filetype="directory"
echo "the filename : $filename is a $filetype"

#4 test permission
test -r $filename && perm="readable"
test -w $filename && perm="$perm writable"
test -x $filename && perm="$perm executable"
echo "The filename permission are : $perm"

