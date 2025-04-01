#!/bin/bash

git status
sleep 2

echo "¿Tienes que hacer un commit?"
read opcion

if [ "$opcion" = "Si" ] || [ "$opcion" = "SI" ] || [ "$opcion" = "si" ] || [ "$opcion" = "sI" ];
then
	echo "Escriba el nombre del commit que quieres crea:"
	read Nombre # Escanea por pantalla el nombre a dar al Commit.

	git add .
	sleep 2

	git commit -m "$Nombre"
	sleep 2
	
	git push
	sleep 2

	echo "Operación finalizada, ¡Vuelva Pronto!"
elif [ "$opcion" = "No" ] || [ "$opcion" = "NO" ] || [ "$opcion" = "no" ] || [ "$opcion" = "nO" ];
then
	echo "Nos veremos en la próxima... Creo."
else
	echo "Has introducido un valor no válido."
fi
