#include <stdio.h>
#include <stdlib.h>

int main(){
	int numero1;
	int numero2;
	float suma, resta, multiplicacion, division;

	printf("Introduzca un número cualquiera:\n");
	scanf("%d", &numero1);
	printf("Introduzca otro número cualquiera:\n");
	scanf("%d", &numero2);

	suma = numero1 + numero2;
	resta = numero1 - numero2;
	multiplicacion = numero1 * numero2;
	division = numero1 / numero2;

	printf("Las operaciones matemática que se pueden hacer con los números insertados son las siguientes:\n");
	printf("%d + %d = %f\n", numero1, numero2, suma);
	printf("%d - %d = %f\n", numero1, numero2, resta);
	printf("%d * %d = %f\n", numero1, numero2, multiplicacion);
	printf("%d / %d = %f\n", numero1, numero2, division);

	return EXIT_SUCCESS;
}
