#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/

int main(){
	int n;
	int suma = 0;

	for(n=0; n <=10; n ++){
		suma += n;
	}

	printf("El resultado de la suma de todos los número desde el 1 al 10 es: %d\n", suma);
	 
	return EXIT_SUCCESS;
}
