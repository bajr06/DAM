#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	int opcion =0; //Es necesario (que no obligatorio) inicializar opcion.
	
	while(opcion != 4){
		//Código a ejecutar
		printf("Introduce una opción (4 para salir):\n");
		scanf("%d", &opcion);
	}
		
	return EXIT_SUCCESS;
}
