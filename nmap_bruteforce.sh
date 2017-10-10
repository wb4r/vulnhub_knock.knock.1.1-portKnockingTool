#!/bin/bash

# if arguments < 2
# app combinations target

TOP_PORTS=50

echo ""
echo "==== -sS"
while IFS='' read -r line || [[ -n "$line" ]]; do
	# Making array of each line of ports to iterate them later
	IFS=', ' read -r -a array <<< "$line"

	# -sS
	for x in ${array[0]} ${array[1]} ${array[2]}; do
		sudo nmap -sS --host_timeout 201 --max-retries 0 -p $x $2 >/dev/null
		# clear
	done

	result=`sudo nmap $2 --top-ports=$TOP_PORTS -sS | grep tcp | grep open`
	echo "[-] $line"
	echo $result
	sleep 1.5

done < "$1"


echo ""
echo "==== -sT"
while IFS='' read -r line || [[ -n "$line" ]]; do
	# Making array of each line of ports to iterate them later
	IFS=', ' read -r -a array <<< "$line"

	# -sS
	for x in ${array[0]} ${array[1]} ${array[2]}; do
		sudo nmap -sT --host_timeout 201 --max-retries 0 -p $x $2 >/dev/null
		# clear
	done

	result=`sudo nmap $2 --top-ports=$TOP_PORTS -sS | grep tcp | grep open`
	echo "[-] $line"
	echo $result
	sleep 1.5

done < "$1"


echo ""
echo "==== -sA"
while IFS='' read -r line || [[ -n "$line" ]]; do
	# Making array of each line of ports to iterate them later
	IFS=', ' read -r -a array <<< "$line"

	# -sS
	for x in ${array[0]} ${array[1]} ${array[2]}; do
		sudo nmap -sA --host_timeout 201 --max-retries 0 -p $x $2 >/dev/null
		# clear
	done

	result=`sudo nmap $2 --top-ports=$TOP_PORTS -sS | grep tcp | grep open`
	echo "[-] $line"
	echo $result
	sleep 1.5

done < "$1"


echo ""
echo "==== -sN"
while IFS='' read -r line || [[ -n "$line" ]]; do
	# Making array of each line of ports to iterate them later
	IFS=', ' read -r -a array <<< "$line"

	# -sS
	for x in ${array[0]} ${array[1]} ${array[2]}; do
		sudo nmap -sN --host_timeout 201 --max-retries 0 -p $x $2 >/dev/null
		# clear
	done

	result=`sudo nmap $2 --top-ports=$TOP_PORTS -sS | grep tcp | grep open`
	echo "[-] $line"
	echo $result
	sleep 1.5

done < "$1"


echo ""
echo "==== -sF"
while IFS='' read -r line || [[ -n "$line" ]]; do
	# Making array of each line of ports to iterate them later
	IFS=', ' read -r -a array <<< "$line"

	# -sS
	for x in ${array[0]} ${array[1]} ${array[2]}; do
		sudo nmap -sF --host_timeout 201 --max-retries 0 -p $x $2 >/dev/null
		# clear
	done

	result=`sudo nmap $2 --top-ports=$TOP_PORTS -sS | grep tcp | grep open`
	echo "[-] $line"
	echo $result
	sleep 1.5

done < "$1"


echo ""
echo "==== -sX"
while IFS='' read -r line || [[ -n "$line" ]]; do
	# Making array of each line of ports to iterate them later
	IFS=', ' read -r -a array <<< "$line"

	# -sS
	for x in ${array[0]} ${array[1]} ${array[2]}; do
		sudo nmap -sX --host_timeout 201 --max-retries 0 -p $x $2 >/dev/null
		# clear
	done

	result=`sudo nmap $2 --top-ports=$TOP_PORTS -sS | grep tcp | grep open`
	echo "[-] $line"
	echo $result
	sleep 1.5

done < "$1"
