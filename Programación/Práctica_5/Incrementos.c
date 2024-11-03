#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Jiménez.
 *
*/

int main(){
	int i = 0;

	i = i + 1;
	printf("%d\n", i); //1
	
	i += 1; //Incrementa en 1.
	printf("%d\n", i); //2

	i += 3; //Incrementa en 3.
	printf("%d\n", i); //5 (2+3)
	
	i -= 5; //Decrementa 5
	printf("%d\n", i);

	return EXIT_SUCCESS;
}
