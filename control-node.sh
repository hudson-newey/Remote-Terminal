#!/bin/sh

# read -p "server ip: " serverIp;
read -p "Enter remote IP:" serverIp

while (true); do
	read -p "$ " command;
	echo $command | nc -q 0 $serverIp 8080; 
	echo $(nc -l -p 8080);
done
