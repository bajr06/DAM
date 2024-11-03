#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	int num;

	printf("Indique el tamaño de la pirámide:");
	scanf("%d", &num);

	for(int fila = 0; fila <= num; fila++){
		for(int colu = 0; colu <= fila; colu++){
		       printf("%d", colu);
		}
	printf("\n");
	}
	
	printf("\n");

	return EXIT_SUCCESS;
}
