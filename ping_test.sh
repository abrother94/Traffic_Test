#!/bin/bash
IP=$1

if [ "$IP" = "" ];then
    echo "Need IP address!!"
    exit
fi

COUNT=5
`sudo killall dhclient 2> /dev/null`
`sudo killall dhclient 2> /dev/null`
`sudo ifconfig eth0 0.0.0.0`
`sudo dhclient eth0 2> /dev/null`
RES=`ping -I eth0 $IP -i 0.2 -c $COUNT -W 1 | grep '64 bytes from' | wc -l`
if [ $RES == $COUNT ];then
    echo "0"
    exit 0
else
    echo "1"
    exit 1
fi

