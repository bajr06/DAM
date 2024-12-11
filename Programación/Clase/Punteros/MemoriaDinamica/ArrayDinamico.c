#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <string.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	int cantidad;

	printf("¿Cuántos números pares deseas ver?\n");
	scanf("%d", &cantidad);

	int *lista = (int *)malloc(cantidad*sizeof(int));
	if(lista == NULL){
		printf("Error, no hay espacio en memoria\n");

		return EXIT_FAILURE;
	}

	printf("Los números pares son.\n");
	for(int i = 0; i < cantidad; i++){
		lista[i] = 2*i;
		printf("\tlista[%d]: %d\n ", i, lista[i]);
	}
	
	printf("\n");

	printf("El doble de la cantidad de números, pero impares, que has querido ver es la siguiente:\n");
	
	int *lista_nueva = (int *)realloc(lista, (cantidad*2)*sizeof(int));
	if(lista_nueva == NULL){
		printf("Error, no hay espacio en memoria\n");
		free(lista);

		return EXIT_FAILURE;
	}

	for(int j = 0, valor = 1; j < cantidad*2; j++, valor += 2){
		lista_nueva[j] = valor;
		printf("\tlista_nueva[%d]: %d\n ", j, lista_nueva[j]);
	}

	free(lista_nueva);

	return EXIT_SUCCESS;
}
