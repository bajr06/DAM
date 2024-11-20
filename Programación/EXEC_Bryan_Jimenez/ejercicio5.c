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
	int num = 0;
	int suma = 0;


	while(num >= 0){
		suma += num;
		scanf("%d", &num);
	}

	printf("La suma de los número ingresados es %d.\n", suma);

	return EXIT_SUCCESS;
}
