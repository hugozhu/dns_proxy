#!/bin/sh
while IFS= read -r line
do
	curl -s --data "address=$line" http://127.0.0.1:7777/address 2>&1 > /dev/null
done