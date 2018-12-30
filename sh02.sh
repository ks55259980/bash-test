#!/bin/bash
#Program:
#	User inputs his first name and last name. Then Program show his full name.
#History:
#2018/10/10 cpt First release

set PATH $PATH:~/bin
echo $PATH
read -p "Please input your first name: " firstname
read -p "Please input your last name: " lastname
echo -e "\n Your full name is : $firstname $lastname" # -e 将字符串内特殊字符特殊处理

