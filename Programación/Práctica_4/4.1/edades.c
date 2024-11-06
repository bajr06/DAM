#include <stdio.h>
#include <stdlib.h>

int main(){
	int edad;

	printf("Escriba su edad:\n");
	scanf("%d", &edad);

// Escaneamos en la variable edad el número que nos den.

	if(edad<12){
		printf("Usted es niño\n");
	} else 
	if(edad>=12 && edad<=17){
		printf("Usted es adolescente\n");
	} else 
	if (edad>=18 && edad<=64){
		printf("Usted es adulto\n");
	} else 
	if (edad>=65){
		printf("Usted es mayor");
	}

// Dependiendo de que valor nos de, y usando las condicionales, determninamos en cada franja si la edad es de un niño o de una persona mayor.

	return EXIT_SUCCESS;
}
