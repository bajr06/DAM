#!/bin/bash

for SUBDIR in test9/*
do
	if [ -d $SUBDIR ];
	then
		cd $SUBDIR
		
		for archivo in *.txt
		do
			head -n 1 $archivo
		done

		cd ../..
	else
		echo "Este archivo no es txt."
	fi
done
