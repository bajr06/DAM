#!/bin/bash

git status

echo "¿Tienes que hacer un commit?"
read opcion

if [ "$opcion" = "Si" ];
then
	echo "Escriba el nombre del commit que quieres crea:"
	read Nombre # Escanea por pantalla el nombre a dar al Commit.

	git add .

	git commit -m "$Nombre"
	
	git push

	echo "Operación finalizada, ¡Vuelva Pronto!"
else
	echo "Nos veremos en la próxima... Creo"
fi
