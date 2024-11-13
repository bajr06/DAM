#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <string.h>

/*
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *	EJEMPLO DE PASO DE ARGUMENTO A UNA FUNCIÓN POR VALOR.
*/

void incrementar(int n){
	printf("Valor recibido: %d\n", n);
	n++;
	printf("Valor incremetado en la función: %d\n", n);
}

int main(){
	int valor = 10;

	incrementar(valor); // Le estoy dando el valor 10, no la variable.
	printf("Valor en el main: %d\n", valor); // Imprime un 10.

	return EXIT_SUCCESS;
}
