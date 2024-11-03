#include <stdio.h>
#include <stdlib.h>
#include <time.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	int aleatorio;
	int numero;
	
	srand(time(NULL));
	aleatorio = (rand() % 100) + 1;
	printf("%d\n", aleatorio);

	do{
		printf("Escriba un número\n");
		scanf("%d", &numero);
	}
	while(numero != aleatorio);

	printf("¡Felicitaciones, has acertado en número!\n");

	return EXIT_SUCCESS;
}
