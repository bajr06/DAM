#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	int opcion; //No es necesario inicializarla porque el primer uso de la variable es la escritura
	
	do {
		//Código a ejecutar
		printf("Introduce una opción (4 para salir):\n");
		scanf("%d", &opcion);
	}

	while (opcion != 4);
		
	return EXIT_SUCCESS;
}
