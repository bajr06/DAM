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
	int cantidad;

	printf("Escriba la cantidad de números que quieres procesar:\n");
	scanf("%d", &cantidad);

	int *numeros = (int *)malloc(cantidad*sizeof(int));

	error(numeros);

	printf("Escriba los números a guardar:\n");
	for(int i = 0; i < cantidad; i++){
		scanf("%d", &numeros[i]);
	}

	printf("Los números que has guardado son:\n");
	for(int j = 0; j < cantidad; j++){
		printf("numero[%d] = %d\n", j, numeros[j]);
	}

	free(numeros);	

	return EXIT_SUCCESS;
}
