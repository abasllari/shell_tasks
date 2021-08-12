
#!/bin/bash

echo "your system info are as beleow:"

echo "you have  $(cat /proc/cpuinfo | grep processor | wc -l) processors "  #how many processors you have
echo "your file system usage is $( df -h | grep root | awk '{ print $5}') :"
 
