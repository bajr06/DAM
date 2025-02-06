#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define error(memoria){ \
	if(memoria == NULL){ \
		puts("ERROR: Falta de memoria."); \
		exit(EXIT_FAILURE); \
	} \
} \



int main(){
	int cantidad, control;

	puts("¿De cuantos carácteres será tu clave?");
	control = scanf("%d", &cantidad);
	
	printf("\n");

	if(control == 0){
		printf("Recuerda meter valores enteros, no de otro tipo...\n");
		return EXIT_FAILURE;
	}
	
	char * clave = (char *)malloc(cantidad * sizeof(char));
	error(clave);

	getchar();
	puts("Introduzca la clave:");
	fgets(clave, cantidad, stdin);
	clave[strlen(clave) - 1] = '\0';

	printf("Esta es tu clave actualmente: %s\n", clave);

	// cifrado_cesar(&clave[0]);

	free(clave);

	return EXIT_SUCCESS;
}
