#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	int n;
	int d;
	int c = 0;

	printf("Introduzca un número:\n");
	scanf("%d", &n);

	for(d = 1; d <= n; d++){
		if (n % d == 0){
			c++;
		}
	}

	printf("La cantidad de divisores que tiene %d es %d\n", n, c);

	return EXIT_SUCCESS;
}
