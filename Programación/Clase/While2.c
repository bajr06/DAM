#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	int numero;
	long int divisor = 1000000000000000000;
	int residuo = 0;

	printf("Escriba un número\n");
	scanf("%d", &numero);
	
	do{
		numero = numero % divisor;
		divisor = divisor / 10;
		residuo += numero / divisor; 

	}
	while(numero % divisor);

		printf("La suma de todos sus digitos es igual a %d\n", residuo);
		
	return EXIT_SUCCESS;
} 
