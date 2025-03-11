#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	int t;
	int n1;
	int n2;

	printf("Indique de que tamaño quiere que sea un cuadrado:\n");
	scanf("%d", &t);

	for(n1 = 0; n1 < t; n1++){
		for(n2 = 0; n2 < t; n2++){
		       printf("* ");
		}
	printf("\n");
	}

	return EXIT_SUCCESS;
}
