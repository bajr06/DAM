#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/

int main(){
	int n1;
	int n2 = 5;
	
	printf("La tabla de multiplicar del 5 es la siguiente:\n");

	for(n1=0; n1 <= 10; n1 ++){
		printf("%d x %d = %d\n", n1, n2, n2*n1);
	}

	return EXIT_SUCCESS;
}
