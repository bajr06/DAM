#include <stdio.h>
#include <stdlib.h>

char capitalizar(char letra_minúscula){
	return letra_minúscula-32;
}

int main (){
	char letra_minúscula;
	
	printf("Escribe una letra:\n");
	scanf("%c", &letra_minúscula);
	printf("Tu letra en mayúscula es: %c\n", capitalizar(letra_minúscula));

	return 0;
}
