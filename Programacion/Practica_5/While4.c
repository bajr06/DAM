#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	int num, coc = 1, dig = 0;

	printf("Inserte un número\n");
	scanf("%d", &num);

	while(coc != 0){
		coc = num /10;
		dig++;
		num = coc;
	}

	printf("Este número tiene un total de %d dígitos\n", dig);

	return EXIT_SUCCESS;
}
