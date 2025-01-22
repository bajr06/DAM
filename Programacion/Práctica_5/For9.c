#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	int num;
	int anterior2 = 0;
	int anterior = 1;

	printf("Serie de Fibonacci\n");
	for (int i = 1; i<=10; i++){
		num = anterior + anterior2;
		printf("%d, ", num);

		anterior2 = anterior;
		anterior = num;
	}

	printf("%d", anterior+anterior2);
	printf("\n");

	return EXIT_SUCCESS;
}
