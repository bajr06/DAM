#include <stdio.h>
#include <stdlib.h>
#include <math.h>

float suma(float numero1, float numero2){
	return numero1+numero2;
}


float resta(float numero1, float numero2){
	return numero1-numero2;
}

float multiplicación(float numero1, float numero2) {
	return numero1*numero2;
}

float división(float numero1, float numero2){
	return numero1/numero2;
}

int main(){
	float numero1, numero2;
	printf("Escribe un número:\n");
	scanf("%f", &numero1);
	printf("Escribe otro número;\n");
	scanf("%f", &numero2);

	printf("El resultado de la suma de %.0f y %.0f es: %.3f\n", numero1, numero2, suma(numero1, numero2));
	printf("El resultado de la resta de %.0f y %.0f es: %.3f\n", numero1, numero2, resta(numero1, numero2));
	printf("El resultado de la multiplicación de %.0f y %.0f es: %.3f\n", numero1, numero2, multiplicación(numero1, numero2));
	printf("El resultado de la división de %.0f y %.0f es: %.3f\n", numero1, numero2, división(numero1, numero2));
	return 0;
}
