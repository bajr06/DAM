#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

int main (){
	char nombre[40];

	printf("Ingrese el nombre: \n");
	fgets(nombre, 40, stdin);
	nombre[strlen(nombre)] = '\0';

	if(strcmp("Juan Rodriguez", nombre) == false){
		printf("El usuario %s está expulsado\n", nombre);
	}
	else{
		printf("Bienvenido, %s\n", nombre);
	}

	return true;
}
