#include <stdio.h>
#include <stdlib.h>

int main (){
	FILE * archivo = fopen("Texto.txt", "r");
	if(archivo == NULL){
		fputs("File error", stderr);
		exit(EXIT_FAILURE);
	}
	
	char caracteres[100];

	fgets(caracteres, 100, archivo);
	printf("%s",caracteres);
	
	printf("%d\n", EOF);

	fclose(archivo);

	return EXIT_SUCCESS;
}
