#!/bin/bash

echo "Escriba el nombre del commit que quieres crea:"
read Nombre

git add .

git commit -m "$Nombre"

git push
