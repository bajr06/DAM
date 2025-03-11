#include <stdio.h>
#include <stdlib.h>

int main (){
	FILE * archivo = fopen("Prueba.c", "w");
	// r: abrirlo quiero verlo.
	// w: abrirlo para escribir.
	if(archivo == NULL){
		fputs("File error", stderr);
		return EOF;
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
