#include <stdio.h>
#include <stdlib.h>

int main(){
	int numero1;
	int numero2;
	int resultado_suma;
	int resultado_resta;
	int resultado_multiplicacion;
	int resultado_division;

	printf("Inserte un número entero:\n");
	scanf("%d", &numero1);
	printf("Inserte otro número entero:\n");
	scanf("%d", &numero2);
	printf("Las operaciones que se pueden hacer con los números enteros que has ingresado son los siguientes:\n");

	resultado_suma = numero1 + numero2;
	resultado_resta = numero1 - numero2;
	resultado_multiplicacion = numero1 * numero2;
	resultado_division = numero1 / numero2;
		
	printf("%d + %d = %d\n", numero1, numero2, resultado_suma);
	printf("%d - %d = %d\n", numero1, numero2, resultado_resta);
	printf("%d * %d = %d\n", numero1, numero2, resultado_multiplicacion);
	printf("%d / %d = %d\n", numero1, numero2, resultado_division);

	return EXIT_SUCCESS;
}
