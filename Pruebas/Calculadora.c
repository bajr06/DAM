#include <stdio.h>
#include <stdlib.h>
#include <math.h>

double Suma(double x, double y){
	return x+y;
}

double Resta(double x, double y){
	return x-y;
}

double Multiplicación(double x, double y){
	return x*y;
}

double División(double x, double y){
	return x/y;
}

double ÁreaCirculo(double z){
	return pow(z,2)*M_PI;
}

int main(){
	double x, y, z;
	char Operación;
	int Opción;

	printf("¡Bienvenido a la Calculadora Multiusos de Pantheon!\n\
Seleccione que tipo de Calculadora desea usar:\n\
	A. Calculadora Simple (Suma, Resta, Multiplicación, División).\n\
	B. Calculadora Compuesta (Área de Circulo, Cuadrado y Raíz Cuadrada).\n");
	scanf(" %c", &Operación);

	switch(Operación){
		case 'A':
			printf("Ahora, seleccione el número de la operación que desea realizar:\n\
				1. Suma.\n\
				2. Resta.\n\
				3. Multiplicación.\n\
				4. División.\n");
			scanf("%d", &Opción);

			printf("Inserte el primer número:\n");
			scanf("%lf", &x);
			printf("Inserte el segundo número:\n");
			scanf("%lf", &y);

			if(Opción==1){
				printf("El resultado de la Suma es %.3lf.\n", Suma(x, y));
			}
			else if(Opción==2){
				printf("El resultado de la Resta es %.3lf.\n", Resta(x, y));
			}
			else if(Opción==3){
				printf("El resultado de la Multiplicación es %.3lf.\n", Multiplicación(x, y));
			}
			else if(Opción==4){
				printf("El resultado de la División es %.3lf\n", División(x, y));
			}
			else{
				printf("Operación no existente.\n");
			}
			break;

		case 'B':
			printf("Seleccione el número de operación a realizar:\n\
				1. Área de Círculo.\n\
				2. Área de Cuadrado.\n");
			scanf("%d", &Opción);

			printf("Introduzca un número:\n");
			scanf("%lf", &z);

			if(Opción==1){
				printf("El área del círculo es %.3lf\n", ÁreaCirculo(z));
			}
			else{
				printf("Operación no existente.\n");
			}
			break;
		default:
			printf("Calculadora no existente");
		}
			
	return EXIT_SUCCESS;
}
