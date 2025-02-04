#!/bin/bash

for ARCHIVO in *.log
do
    if grep -q "ERROR" "$ARCHIVO";
    then
        echo "El archivo $ARCHIVO contiene errores"
    else
        echo "El archivo $ARCHIVO está limpio"
    fi
done
