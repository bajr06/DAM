#!/bin/bash

ps aux > processes.txt

for PROC in $(cat processes.txt)
do
	if ps aux | grep -q "$PROC" ;
	then
		echo "El proceso $PROC está en ejecución"
	else
		echo "El proceso $PROC no está en ejecución"
	fi
done
