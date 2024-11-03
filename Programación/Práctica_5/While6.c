#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	int numero = 1;

	while(numero >= 0){
		printf("Escribe un número:");
		scanf("%d", &numero);
	}

	printf("Has escrito un número negativo.\n");

	return EXIT_SUCCESS;
}
