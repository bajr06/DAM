#!/bin/bash

t='	'

echo "Bienvenido al script supremo"
echo "¿Cuál de las siguientes opciones quieres seleccionar?"
echo "$t 1. Crear un nuevo usuario y asignar a un grupo ya existente"
echo "$t 2. Eliminar usuario"
echo "$t 3. Listar los usuarios existentes y ver su información"

read opcion # Escanea la opcion que el administrador escoja por pantalla.

if [ $opcion -eq 1 ];
then
	echo "Escriba el nombre que quieras que tenga el usuario:"
	read nuevo

	sudo adduser "$nuevo" # Ejecuta el comando para crear un nuevo usuario.

	echo "Escriba el grupo al que quieres añadir al usuario:"
	read grupo
	
	sudo usermod -aG "$grupo" "$nuevo" # Lo añade a un grupo que ya exista con anterioridad
elif [ $opcion -eq 2 ];
then
	echo "Escriba el nombre del usuario al cual quieras eliminar:"
	read borrar

	sudo deluser "$borrar" # Borra al usuario (que se haya creado con anterioridad, o que ya exista).
elif [ $opcion -eq 3 ];
then
	echo "Escriba el nombre del usuario al que le quieres ver la información:"
	read nombre

	groups "$nombre" # Muestra las carácteristicas del usuario.
else
	echo "No existe esa opción. Vuelva a ejecutar el script."
fi

