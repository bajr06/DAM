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

// *ptr será lo que hay que imprimir
// tipo indica el tipo de variable
void printValor(void *ptr, char tipo){
	switch(tipo){
		case 'd':
			// printf("Double %lf", (double*)ptr); No es correcto porque no estamos accediendo al contenido del número
			printf("Double %lf", *((double*)ptr));
			break;
		case 'i':
			printf("Entero: %d\n" *((int*)ptr));
		default:
			printf("Error\n");
	}
}
// Casting es convertir una variable de un tipo a otro

int main(){
	double num = 2.1;
	void *dir = &num;
	
	printValor(dir, 'd');
	printValor(dir, 'i');
	
	printf("%ld\n", sizeof(dir));

	return EXIT_SUCCESS;
}
