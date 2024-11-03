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
	int numero = 0, suma = 0;

	do{
		suma += numero;
		printf("Escibre un número par: ");
		scanf("%d", &numero);
	}
	while(numero % 2 == 0);

	printf("Has escrito un inpar. La suma total de los pares es: %d\n", suma);

	return EXIT_SUCCESS;
}
