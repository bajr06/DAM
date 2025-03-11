#include <stdio.h>
#include <stdlib.h>

int main(){
	char str1[100];
	char str2[100];

	printf("Introduce una palabra:\n");
	scanf("%s", str1); //No hace falta el & porque ya de por sí, la propia variable de tipo "cadena de carácteres" reserva memoria.
	scanf("%s", str2);
	
	printf("%s %s\n", str1, str2);

	return EXIT_SUCCESS;
}
