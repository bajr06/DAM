#include <stdio.h>
#include <stdlib.h>

int main(){
	int numero1=6;
	int numero2=4;
	float numero3=6;
	float numero4=4;
	int suma, resta, multiplicacion;
	float division;

	suma=numero1+numero2;
	resta=numero1-numero2;
	multiplicacion=numero1*numero2;
	division=numero3/numero4;

	printf("Las operaciones matemática que se pueden hacer con los números %d y %d son las siguientes:\n", numero1, numero2);
	printf("%d+%d=%d\n", numero1, numero2, suma);
	printf("%d-%d=%d\n", numero1, numero2, resta);
	printf("%d*%d=%d\n", numero1, numero2, multiplicacion);
	printf("%1.f/%1.f=%.2f\n", numero3, numero4, division);

	return EXIT_SUCCESS;
}
