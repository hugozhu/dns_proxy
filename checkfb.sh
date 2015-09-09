#!/bin/sh

facebook_ip=`nslookup www.facebook.com localhost -port=1053 -timeout=30 | grep "Address: " | tail -n 1 | awk '{print $2}'`

if [ "$facebook_ip" == "" ]; then
    echo "Failed to resolve www.facebook.com $facebook_ip"
    exit 1	
fi

facebook=`timeout 30 curl -s --socks5 192.168.1.4:1080 "https://$facebook_ip/?_rdr" -H 'Host: www.facebook.com' -H 'user-agent: Mozilla/5.0' --compressed --insecure | grep facebook | wc -l`

if [ "$facebook" -lt "2" ]; then
    echo "Failed to fetch https://www.facebook.com $facebook_ip"
    exit 1
fi

echo "Congrats!"
exit 0