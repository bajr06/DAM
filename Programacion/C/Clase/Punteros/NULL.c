#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <string.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	int *dir = NULL;

	printf("Dirección de memoria: %p\n", dir);
	printf("Contenido de esa dirección:%d\n", *dir);

	return EXIT_SUCCESS;
}
