#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <string.h>

/*
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *	EJEMPLO DE PASO DE ARGUMENTO A UNA FUNCIÓN POR VALOR.
*/

// Quiero que realmente incremente la variable dada con argumento.
void incrementar(int *n){
	printf("Valor recibido: %d\n", *n);
	// (*n)++;
	*n = (*n) + 1;
	printf("Valor incremetado en la función: %d\n", *n);
}

int main(){
	int valor = 10;

	incrementar(&valor); // Le estoy dando el valor 10, no la variable.
	printf("Valor en el main: %d\n", valor); // Imprime un 10.

	return EXIT_SUCCESS;
}

/*
 * La diferencia entre darle un & o no la función incrementar(), es el hecho de que le estás dando:
 * Si no le das el &, la función creará una copia de la variable que se le está asignando un valor,
 * y el valor en memoria no cambiará
 * Si le das el &, le estás dando la referencia del valor, por lo que lo modifica directamente en
 * memoria.
*/
