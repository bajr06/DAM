#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	int numero, cociente = 1, resto = 0;

	printf("Inserte un número\n");
	scanf("%d", &numero);

	while(cociente != 0){
		cociente = numero / 10;
		resto = resto * 10 + (numero % 10);
		numero = cociente;
	}
	
	printf("%d\n", resto);

	return EXIT_SUCCESS;
}
