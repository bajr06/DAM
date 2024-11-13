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

void intercambiar(int *n1, int *n2){
	int g;
       	
	g = *n1;
	*n1 = *n2;
	*n2 = g;
}

int main(){
	int x = 10;
	int y = 20;

	intercambiar(&x, &y);

	printf("X = %d\n", x);
	printf("Y = %d\n", y);

	return EXIT_SUCCESS;
}
