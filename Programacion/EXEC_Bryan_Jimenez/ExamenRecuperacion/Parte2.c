#include <stdio.h>
#include <stdlib.h>

#define error(memoria){ \
	if(memoria == NULL){ \
		puts("ERROR: Falta de Memoria."); \
		return EXIT_FAILURE; \
	} \
} \


void rellenar(int * lista, const int cantidad, const int multiplo){
	for(int i = 0; i < cantidad; i++){
		lista[i] = i * multiplo;
	}
}

int * sumarlista(int * lista, int *lista1, const int cantidad, const int cantidad1){
	int max;

	if(cantidad > cantidad1 || cantidad1 < cantidad){
		max = cantidad;
	}
	else
	if(cantidad1 > cantidad || cantidad < cantidad1){
		max = cantidad1;
	}
	else
	if(cantidad == cantidad1){
		max = cantidad;
	}

	int * nuevalista = (int *)malloc(max * sizeof(int));
	
	error(nuevalista);

	for(int j = 0; j < max; j++){
		if(cantidad < j && cantidad1 < j){
			nuevalista[j] = lista[j] + lista1[j];
		}
		else
		if(j > cantidad && j < cantidad1){
			nuevalista[j] = lista1[j];
		}
		else
		if(j > cantidad1 && j < cantidad){
			nuevalista[j] = lista[j];
		}
		else{
			puts("Error");
		}

		printf("Lista[%d]: %d\n", j, nuevalista[j]);
	}

	return &nuevalista[0];
}

int * concatenarlistas(int * lista, int * lista1, const int cantidad, const int cantidad1, const int nuevacantidad){
	int * nuevalista1 = (int *)malloc(nuevacantidad * sizeof(int));

	error(nuevalista1);

	/*
	 * for(int k = 0; k < nuevacantidad; k++){
		if(k < cantidad){
			nuevalista[k] = lista[k];
		}
		else
		if(k > cantidad ){}
	}
	*/
}


int main(){
	int cantidad;

	puts("Escriba la cantidad de números a procesar:");
	scanf("%d", &cantidad);

	int * lista = (int *)malloc(cantidad * sizeof(int));

	error(lista);

	int multiplo;

	puts("¿Con múltiplos de qué número deseas rellenar la lista?");
	scanf("%d", &multiplo);

	rellenar(&lista[0], cantidad, multiplo);
	

	int cantidad1;

	puts("Escriba nuevamente la cantidad de números a procesar:");
	scanf("%d", &cantidad1);

	int * lista1 = (int *)malloc(cantidad1 * sizeof(int));

	error(lista1);

	int multiplo1;

	puts("¿Con múltiplos de qué número deseas rellenar esta otra lista?");
	scanf("%d", &multiplo1);

	rellenar(&lista1[0], cantidad1, multiplo1);


	int escoger;

	printf("¿Qué proceso deseas hacer?\n\
	\t 1. Concatenar los números de cada lista\n\
	\t 2. Sumar los números de cada lista\n");
	scanf("%d", &escoger);

	switch(escoger){
		case 1:
			int * nuevalista = sumarlista(&lista[0], &lista1[0], cantidad, cantidad1);
			free(nuevalista);
			break;
		case 2:
			int nuevacantidad = cantidad + cantidad1;
			
			int nuevalista1 = concatenarlistas(&lista[0], &lista1[0], cantidad, cantidad1, nuevacantidad);

			free(nuevalista1);
			break;
		default:
			puts("Ese proceso no existe");
	}

	free(lista);
	free(lista1);

	return EXIT_SUCCESS;
}
