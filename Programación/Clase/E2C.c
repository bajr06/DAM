#include <stdio.h>
#include <stdlib.h>

int main(){
	char str1 [20];
	char str2 [20];
	char str3 [5];

	printf("Introduzca una palabra:\n");
	scanf(" %s", str1);

	printf("Introduzca otra palabra:\n");
	scanf(" %s", str2);
	
	str3['\0'];

	printf("La nueva palabra es: %s%s%s\n", str1, str3, str2);
	
	return EXIT_SUCCESS;
}
