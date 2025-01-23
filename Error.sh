#!/bin/bash

echo "¿Seguro que quieres ejecutar el arreglo de encabezado para GitHub?"
read control # Escaneamos lo que el usuario de como resultado (Solamente es válido Si, caso contrario se ejecutará el else)

if [ "$control" = "Si" ]; then
	git status # TODO (Hay que cambiar esto de orden).
	
	ls -al | grep .git
	cp -a .git /tmp/ # Copia la carpeta temporal de los commits.
	
	clear # Borrar lo que se encuentre en la terminal.
	
	sudo cp -a .git /tmp/ # Al no permitir el anterior copiado (al ser archivos protegidos), se ejecuta con los permisos de adminstrador.
	
	ls /tmp/ 
	ls -a /tmp/
	
	clear

	find .git -type f -empty -delete -print

	tail -n 2 .git/logs/heads/main #Cambia a main o master dependiendo del nombre que se encuentre en su ordenador en esa carpeta.

	echo "Copie el segundo valor de la línea mostrada:"
	read encabezado # Se le da el valor del anterior commit para poder reiniciar el encabezado donde está.

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
