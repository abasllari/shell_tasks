#!/bin/bash
REALVALUE=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
THRESHOLD=80

if [ "$REALVALUE" -gt "$THRESHOLD" ] ; then
    mail -s 'Disk Space Alert' mailid@domainname.com << EOF
Your root partition remaining free space is critically low. Used: $REALVALUE%
EOF
fi
