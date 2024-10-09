#include <stdio.h>
#include <stdlib.h>
#include <math.h>

//Creamos las funciones de cada una de las operciones de nuestra calculadora.

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
	char letra;

//En cada una de las variables creadas con anterioridad escaneamos los datos que nos de el usuario.

	printf("Escribe un número:\n");
	scanf("%f", &numero1);
	
	printf("Escribe otro número;\n");
	scanf("%f", &numero2);

	printf("Inserte la inicial de la operación que deseas realizar (S (Suma), R (Resta), M (Multiplicación), D (División)):\n");
	scanf(" %c", &letra);

//Determinamos condicionales basándonos en el escaneo de la variable char, la cual, dependiendo de lo que el usuario haya decidido poner, se ejecutara esa operción.

	if(letra=='S'){
	printf("El resultado de la suma de %.0f y %.0f es: %.3f\n", numero1, numero2, suma(numero1, numero2));
	} else if(letra=='R'){
	printf("El resultado de la resta de %.0f y %.0f es: %.3f\n", numero1, numero2, resta(numero1, numero2));
	} else if (letra=='M'){
	printf("El resultado de la multiplicación de %.0f y %.0f es: %.3f\n", numero1, numero2, multiplicación(numero1, numero2));
	} else if (letra=='D'){
	printf("El resultado de la división de %.0f y %.0f es: %.3f\n", numero1, numero2, división(numero1, numero2));
	}

	return 0;
}
