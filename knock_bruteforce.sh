#!/bin/bash

# if arguments < 2
# app combinations target

while IFS='' read -r line || [[ -n "$line" ]]; do

	result=""
	knock $2 $line
	result=`sudo nmap $2 -p22 -sS | grep tcp | cut -d" " -f2`
	echo "$line: " $result
	if [ "$result" == "open" ]; then
		exit
	fi
	# sleep 3
done < "$1"
