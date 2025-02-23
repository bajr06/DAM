#include <stdio.h>
#include <stdlib.h>

int main (){
	FILE * archivo = fopen("Texto.c", "a");
	// r: abrirlo quiero verlo.
	// w: abrirlo para escribir.
	if(archivo == NULL){
		fputs("File error", stderr);
		return EXIT_FAILURE;
	}
	
	/*
	do{
		int lectura = fgetc(archivo);
		printf("%c\n", (char) lectura);
	} while(!feof(archivo));
	*/

	long pos = ftell(archivo);
	printf("%ld\n", pos);

	fclose(archivo);

	return EXIT_SUCCESS;
}
