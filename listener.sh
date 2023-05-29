#!/bin/sh
# using /bin/sh allows for bsd based systems to use this application

# read serverIp;
serverIp="192.168.1.16"

echo "Listening on port :8080";

while (true); do
	command=$(nc -l -p 8080);

	output=$(echo $command | bash 2>&1);
	errorCode=$?;

	# the server terminal output
	echo "$" $command;
	echo $output;

	# response to the client
	echo $errorCode $output | nc -q 1 $serverIp 8080;
done
