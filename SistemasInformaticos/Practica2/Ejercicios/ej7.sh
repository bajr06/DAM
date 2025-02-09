#!/bin/bash

for archivo in test7/*;
do
	if [[ "$archivo" == *.conf ]]; then
		sed -i 's/localhost/127.0.0.1/g' "$archivo"
		echo "Se ha modificado el archivo $archivo"
	else
		echo "No se ha modificado el archivo $archivo."
	fi
done
