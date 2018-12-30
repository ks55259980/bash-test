#!/bin/bash
#Program:
#	This program shows "Hello World" in your screen.
#History:
#	2018/10/10 cpt First release

echo $PATH
PATH=$PATH:/bin:/sbin:/usr/bin:usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo $PATH
echo -e "Hello World! \a \n"
exit 0
