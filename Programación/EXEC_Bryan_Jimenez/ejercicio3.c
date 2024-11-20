#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <string.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	int num;

	scanf("%d", &num);

	(num % 2 == 0)? printf("El número %d es par.\n", num) : printf("El número %d es impar.\n", num);

	return EXIT_SUCCESS;
}
