#!/bin/bash

read Nombre

git add .

git commit -m "$Nombre"

git push
