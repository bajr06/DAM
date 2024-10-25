#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Victor de Juan
 *
*/
int main(){
	int x = 0;

	for (/*Valor Inicial*/ x = 0; /*Condición*/ x < 5; /*Código a ejecutar en bucle*/ x = x + 1){
		printf("%d", x);
	}
			
	printf("Terminado\n");

	x=0;
	while(x<5){ //Condición
		printf("%d", x); //En interior del for
		x = x + 1; //Código entre vueltas

	return EXIT_SUCCESS;
}
