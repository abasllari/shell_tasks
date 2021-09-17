#!/bin/bash
set -euo pipefail

echo "your system info are as beleow:"
echo "your memory is $(free -h | grep Mem | awk '{ print $2 }' ) "
echo "you have  $(cat /proc/cpuinfo | grep processor | wc -l) processors "  #how many processors you have
var=$( df -h | grep "/$"  | awk '{ print $5}') 
echo "you file system is used $var" 

if  [ "$var">=10 ] 
then
	
	echo  "you file system is used $var" >> $HOME/sysinfo.log
	echo "you will have an email also"  #next task send the out put as email alert
	mail -s "sysinfo" 

else  	echo "not having email"
fi




