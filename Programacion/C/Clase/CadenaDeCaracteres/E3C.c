#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	char x[20] = "Iguales";
	char y[20] = "Iguales";

	// Imprimiria "Son distintas" porque el hueco de memoria en el que se genera es distinto.
	// En las comporaciones en vez de comparar la palabra, comparará el hueco de memoria.
	//

	if(x[2] == y[2]){
		printf("Iguales\n");
	}
	else 
	if(x[2] < y[2]){
		printf("Menor\n");
	}
	else 
	if(x[2] > y[2]){
		printf("Mayor\n");
	}
	else 
	if(x[2]!=y[2]){
		printf("Diferentes\n");
	}
	else{
		printf("Ninguno\n");
	}
	
	//Ver repositorio de Profesor.

	return EXIT_SUCCESS;
}
