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
	int numero = 10; //Definir una variable
	const int *const ptr = &numero; // Puntero constante

	printf("Valor: %d\n", *ptr);
	
	// +ptr = 20;  Esto daría un error, porque no es posible acceder a el como valor-
	numero = 20; // Cambiar el valor de la dirección de memoria.
	printf("Valor: %d\n", *ptr);

	// TRAMPA
	*ptr = 90;
	printf("Nuevo Valor: %d\n", *ptr);

	return EXIT_SUCCESS;
}
