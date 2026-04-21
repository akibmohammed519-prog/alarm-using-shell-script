#!/bin/bash

echo "set alarm time (HH:MM) :-"
read alarm

echo " alram set for $alarm"

while true
do
	current=$(date +%H:%M)

	if [ "$current" == "$alarm" ]
	then
		echo "Wake up! Time ho gaya!"

		for i in {1..5}
		do
			echo -e "\a"
			sleep 1
		done

		break
	fi
	sleep 10
done
