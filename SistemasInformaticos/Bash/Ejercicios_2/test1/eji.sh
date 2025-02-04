#!/bin/bash

for archivo in *.txt
do
	if grep -q '.' "$archivo"; then
		echo "El archivo $archivo NO está vacio."
	else
		echo "El archivo $archivo está vacio."
	fi
done
