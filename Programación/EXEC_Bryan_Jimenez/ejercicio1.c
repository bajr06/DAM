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

	scanf("%d", &num);

	if(num < 0){
		printf("El número %d es negativo.\n", num);
	}
	else 
	if(num > 0){
		printf("El número %d es postivo.\n", num);
	}
	else
	if(num == 0){
		printf("El número ingresado es cero.\n");
	}

	return EXIT_SUCCESS;
}
