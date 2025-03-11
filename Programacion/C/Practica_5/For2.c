#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/

int main(){
	int n;

	for(n = 0; n < 19; n += 2){
		printf("%d, ", n);
	}

	printf("%d.\n", n);

	return EXIT_SUCCESS;
}
