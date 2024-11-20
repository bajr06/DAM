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

	do{
		scanf("%d", &num);
		
		if(num < 1 || num > 10){
			printf("Número no válido.\n");
		}
		else{
			printf("Has ingresado el número %d.\n", num);
		}
	}
	while(num < 1 || num > 10);

	return EXIT_SUCCESS;
}
