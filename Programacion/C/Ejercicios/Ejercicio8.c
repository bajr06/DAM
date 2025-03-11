#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

#define error(memoria){ \
	if(memoria == NULL){ \
		printf("Error.\n"); \
		return EXIT_SUCCESS; \
	} \
} \

int main(){
	int cantidad, nuevacantidad;

	printf("Escriba la cantidad de números que quieres procesar:\n");
	scanf("%d", &cantidad);

	int *numeros = (int *)malloc(cantidad*sizeof(int));

	error(numeros);

	printf("Los números que se han procesado son:\n");
	for(int i = 0; i < cantidad; i++){
		numeros++;
		printf("numero[%d] = %d\n", i, numeros[i]);
	}

	printf("¿Cuanto números deseas añadir?\n");
	scanf("%d", &nuevacantidad);

	int *masnumeros = (int *)realloc(numeros, nuevacantidad*sizeof(int));
	
	error(masnumeros);
	
	masnumeros = numeros;

	for(int j = 0; j < cantidad+nuevacantidad; j++){
		masnumeros++;strlen(cadena1)
	 	printf("masnumeros[%d] = %d\n", j, masnumeros[j]);
	}

	free(masnumeros);	

	return EXIT_SUCCESS;
}
