#!/bin/sh

server="192.168.1.4"

if [ $# -eq 1 ]; then
	server=$1
fi	

timedout=`nslookup www.google.com $server -timeout=30 | grep "timed out" | wc -l`
if [ "$timedout" == "1" ]; then
	echo "DNS Server $server error"
	exit 1
fi

echo "DNS server $server ok"
exit 0
