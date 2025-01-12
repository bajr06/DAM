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
	char str1[40] = "Hola Mundo";
	char String[20] = "Among Us";
	char str2[40] = String;

	scanf("%s",String);

	printf("%s\n %s", str1, str2);

	return EXIT_SUCCESS;
}
