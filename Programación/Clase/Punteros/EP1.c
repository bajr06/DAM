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
	float x = 5.2;
	float *p;

	p = &x;

	printf("Valor de la variable: %f\n", x);
	printf("Direccoón de la variable: %p\n", &x);
	printf("Valor apuntado por el puntero: %f\n", *p);

	return EXIT_SUCCESS;
}
