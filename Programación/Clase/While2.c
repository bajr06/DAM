#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	int numero;
	int divisor = 10000;
	int residuo;
	int guardado;

	printf("Escriba un número\n");
	scanf("%d", &numero);
	
	do{
		numero = numero % divisor;
		divisor = divisor / 10;
		residuo = numero / divisor;
		guardado += residuo;

	}
	while(numero % divisor);

		printf("%d\n", residuo);
		
	return EXIT_SUCCESS;
}
