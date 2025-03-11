#!/bin/bash

echo "Por ahora, solamente escribe 2 .c para compilarlos rápidamente"
read archivo1
read archivo2

gcc -Wall -g -o main.out "$archivo1" "$archivo2"
