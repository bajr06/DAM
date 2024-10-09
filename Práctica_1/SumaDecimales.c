#include <stdio.h>
#include <stdlib.h>

int main(){
	float numero1;
	float numero2;
	float resultado_suma;
	float resultado_resta;
	float resultado_multiplicacion;
	float resultado_division;

	printf("Escriba un número decimal:\n");
	scanf("%f", &numero1);
	printf("Escribe otro número decimal:\n");
	scanf("%f", &numero2);

	resultado_suma=numero1+numero2;
	resultado_resta=numero1-numero2;
	resultado_multiplicacion=numero1*numero2;
	resultado_division=numero1/numero2;

	printf("Las operaciones matemática que se pueden hacer con los números que has insertado son las siguientes:\n");
	printf("%.1f+%.1f=%.1f\n", numero1, numero2, resultado_suma);
	printf("%.1f-%.1f=%.1f\n", numero1, numero2, resultado_resta);
	printf("%.1f*%.1f=%.1f\n", numero1, numero2, resultado_multiplicacion);
	printf("%.1f/%1.f=%.2f\n", numero1, numero2, resultado_division);

	return EXIT_SUCCESS;
}
