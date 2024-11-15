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
	int arr[5] = {1, 2, 3, 4, 5};
	
	//Recorrer el array y sumarlo
	int numElementos = sizeof(arr)/sizeof(int);

	for(int *p = arr; *p < &arr[numElemento]; p++){
		printf("%d\n", *p);
	}

	printf("Sizeof arr: %ld\n", sizeof(arr));
	printf("Sizeof in: %ld\n", sizeof(int));
	printf("Elementos del array: %ld\n", sizeof(arr)/sizeof(int));

	char palabra[10] = "Gratis";

	for(char *l = palabras; *l != '\0'; l++){
		printf("%c", *l);
	}
	printf("%c", *l);

	return EXIT_SUCCESS;
}
