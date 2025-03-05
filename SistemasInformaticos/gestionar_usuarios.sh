#!/bin/bash

t='	'

echo "Bienvenido al script supremo"
echo "¿Cuál de las siguientes opciones quieres seleccionar?"
echo "$t 1. Crear un nuevo usuario y asignar a un grupo ya existente"
echo "$t 2. Eliminar usuario"
echo "$t 3. Listar los usuarios existentes y ver su información"

read opcion

if [ $opcion -eq 1 ];
then
	echo "Escriba el nombre que quieras que tenga el usuario:"
	read nuevo

	sudo adduser "$nombre"

	echo "Escriba el grupo al que quieres añadir al usuario:"
	read grupo

	sudo usermod -aG "$grupo" "nombre$"
elif [ $opcion -eq 2 ];
then
	echo "Escriba el nombre del usuario al cual quieras eliminar:"
	read borrar

	sudo userdel -r "$nombre"
elif [ $opcion -eq 3 ];
then
	echo "Escriba el nombre del usuario al que le quieres ver la información:"
	read nombre

	groups "$nombre"
else
	echo "No existe esa opción. Vuelva a ejecutar el script."
fi
