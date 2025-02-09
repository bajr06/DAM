#!/bin/bash

for USUARIO in $(cat usuarios.txt)
do
	if [ $USUARIO == "maria" ];
	then
		echo "Hola, $USUARIO"
	else
		echo "Hola, USUARIO"
	fi
done
