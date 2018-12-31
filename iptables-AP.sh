#!/bin/bash

flag=1

if [ "$1" == "wlan0" ]; then
	LAN="wlan0"
	WAN="eth0"
elif [ "$1" == "eth0" ]; then
	LAN="eth0"
	WAN="wlan0"
else
	echo "Please input \"sh AP.sh  [wlan0|eth0]\""
	flag=0
fi

if [ $flag -eq 1 ]; then
	sudo iptables -t nat -A POSTROUTING -o $LAN -j MASQUERADE
	sudo iptables -A FORWARD -i $LAN -o $WAN -m state --state RELATED,ESTABLISHED -j ACCEPT
	sudo iptables -A FORWARD -i $WAN -o $LAN -j ACCEPT
fi
