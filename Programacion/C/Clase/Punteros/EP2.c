#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <string.h>

#define LIM 5
/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	int suma[LIM] = {10, 25, 30, 45, 50};
	int *p;
	int incremento = 0;

	p = suma;
	
	for(int i = 0; i < LIM; i++){
		incremento += *(p++);	
	}

	printf("La suma de los números es %d\n",  incremento);
	return EXIT_SUCCESS;
}
