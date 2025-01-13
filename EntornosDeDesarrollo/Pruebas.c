#include <stdio.h>
#include <stdlib.h>

#define MAX_FILA 6

int main(){
	int numero = 0;
	int fila, columna;
	
	for(fila = 1; fila < MAX_FILA; fila++){
		columna = 1;

		while(columna <= fila){
			numero++;
			printf("%5d", numero);
			columna++;
		}

		printf("\n");
	}

	printf("\n\n");

	return EXIT_FAILURE;
}
