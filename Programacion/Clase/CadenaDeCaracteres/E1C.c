#include <stdio.h>
#include <stdlib.h>

int main(){
	char str [30];
	int número;
	char letra;

	printf("Introduzca una palabra:\n");
	scanf("%s", str);

	printf("¿Qué posición desea modificar?\n");
	scanf("%d", &número);

	printf("¿Qué caracter desea poner?\n");
	scanf(" %c", &letra);

	str[número-1]=letra;
	printf("La nueva palabra es: %s\n", str);

	return EXIT_SUCCESS;
}
