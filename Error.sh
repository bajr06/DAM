#!/bin/bash

echo "¿Seguro que quieres ejecutar el arreglo de encabezado para GitHub?"
read control # Escaneamos lo que el usuario de como resultado (Solamente es válido Si, caso contrario se ejecutará el else)

if [ "$control" = "Si" ]; then
	git status
	
	ls -al | grep .git
	cp -a .git /tmp/
	
	clear
	
	sudo cp -a .git /tmp/
	
	ls /tmp/
	ls -a /tmp/
	
	clear

	find .git -type f -empty -delete -print

	tail -n 2 .git/logs/heads/main

	echo "Copie el segundo valor de la línea mostrada:"
	read encabezado

	git show "$encabezado"

	clear

	git update-ref HEAD "$encabezado"
	rm .git/index
	git reset
	
	git status

	echo "Arreglo finalizado con éxito, ¡Esperemos no nos tengas que volver a ejecutar!"
else # Si no recibe el valor esperado, ejecuta esto.
	echo "Cuando estés seguro del error ejecuta esta pequeña automatización."
fi
