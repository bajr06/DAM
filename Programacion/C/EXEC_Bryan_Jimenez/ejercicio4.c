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
	int num;
	int suma = 0;

	scanf("%d", &num);

	for(int i = 1; i <= num; i++){
		suma += i;
	}

	printf("La suma de los primeros %d números es %d.\n", num, suma);
		
	return EXIT_SUCCESS;
}
