#!/bin/bash

for archivo in *.*
do
	if [[ $archivo == *.jpg ]]; then
		mv $archivo `echo $archivo | sed 's/\(.*\.\)jpg/\1old/'`
	fi
done
