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
	const int LIMITE = 100; //Definir una constante.
	int *trampa = &LIMITE; // Esta asignación genera un warning, no un error.

	printf("El valor de LIMITE es: %d\n", LIMITE);

	// LIMITE = 200; Esto daría un error porque LIMITE es constante (no cambia).
	*trampa = 200;
	printf("El valor de LIMITE es: %d\n", LIMITE);

	return EXIT_SUCCESS;
}
