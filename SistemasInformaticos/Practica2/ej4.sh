#!/bin/bash

for (( i=1; i<=5; i++ ))
do
    if (( i == 3 ));
    then
        echo "Saltamos el numero 3."
        continue
    else
        echo "i = $i."
    fi
done
