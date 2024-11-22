#include <stdio.h>
#include <stdlib.h>

int main (){
	int n1;

	printf("Escriba un número:\n");
	scanf("%d", &n1); //Escaneamos en la variable int el número que nos de el usuario.

	if(n1%2){
		printf("Es un número inpar\n");
	}
	else{
		printf("Es un número par\n");
}
// Usando el % dividimos el número que nos de en 2 y nos lanza el residuo que quede, el cual determinara que si queda 1 es inpar y si es 0 es par.

	return EXIT_SUCCESS;
}
