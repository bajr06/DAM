#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

// Se puede usar macros.
#define error(memoria){ \
	if(memoria == NULL){ \
		printf("Error, no hay memoria"); \
\
		return EXIT_FAILURE; \
	} \
} \

int main(){
	// Declara un array de tamaño 3 utilizando memoria dinámica.
	int *arr = (int *)malloc(3*sizeof(int));
	
	// SIEMPRE.
	error(arr);
	
	// Inicializa los valores con los número 1, 3 y 5.
	for(int i = 0; i < 3; i++){
		arr[i] += 2 * i + 1;
	}
	
	// Vamos a ampliar el array a 5 elementos.
	int *arr_ampliado = (int *)realloc(arr, 5*sizeof(int));
	
	// Para evitar confusiones entre arr_ampliado y arr, es recomendable añadir:
	// arr = arr = ampliado.
	// MALA PRÁCTICA. arr se ha dejado "colgado".

	error(arr_ampliado);
	
	// Terminamos de inicializar.
	arr_ampliado[3] = 7;
	arr_ampliado[4] = 9;

	for(int j = 0; j < 5; ++j){
		printf("arr_ampliado[%d]: %d\n", j, arr_ampliado[j]);
	}
	
	// ¿Qué tengo que liberar?
	// free(arr) ERROR: Double free detected.
	free(arr_ampliado);

	return EXIT_SUCCESS; // 0.
}
