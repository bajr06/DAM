#include <stdio.h>
#include <stdlib.h>
#include <string.h>
/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

#define error(memoria){ \
	if(memoria == NULL){ \
		printf("Error.\n"); \
		return EXIT_FAILURE; \
	} \
} \

int main(){
	int cantidad;

	printf("Escriba la cantidad de números que quieres procesar:\n");
	scanf("%d" , &cantidad);

	char *letras = (char *)malloc((cantidad+1)*sizeof(char));

	error(letras);

	printf("Escriba la palabra a guardar a guardar:\n");
	scanf("%s", letras);

	if(strlen(letras) >= cantidad){
		printf("Has introducido una cadena más grande de la que has especificado.\n");
		free(letras);
		return EXIT_FAILURE;
	}

	printf("La palabra que has guardado es:\n");
	printf("%s\n", letras);

	free(letras);	

	return EXIT_SUCCESS;
}
