#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/

int main(){
	int n1;
	int n2;
	int suma = 0;
	
	printf("Inserte un número cualquiera:\n");
	scanf("%d", &n1);

	for(n2 = 0; n2 <= n1; n2 ++){
		suma += n2;
	}
	printf("El resultado de los %d primeros números es: %d\n", n1, suma);
	 
	return EXIT_SUCCESS;
}
