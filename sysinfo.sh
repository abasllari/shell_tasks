#!/bin/bash

echo "your system info are as beleow:"

echo "you have  $(cat /proc/cpuinfo | grep processor | wc -l) processors "  #how many processors you have
var=$( df -h | grep root | awk '{ print $5}') 
echo "you file systeim is used $var" 

if  [ "$var">=10 ] 
then
	echo "you will have an email"

else  	echo "not having email"
fi


