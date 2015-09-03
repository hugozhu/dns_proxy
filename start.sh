#!/bin/sh
export GOPATH=`pwd`
while [ 1 ]
do
	sleep 1
	go run main.go --port 1053 --proxy socks5://192.168.1.4:1080 --up_dns 8.8.8.8:53 | ros_ipset.sh	
done