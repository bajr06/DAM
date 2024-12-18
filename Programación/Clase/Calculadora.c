#include <stdio.h>
#include <stdlib.h>

int main(){
	float numero1;
	float numero2;
	char símbolo;
	float resultado;

	printf("Introduce el primer número:\n");
	scanf("%f", &numero1);

	printf("Introduce el segundo número\n");
	scanf("%f", &numero2);

	printf("Introduce el operador (+, -, *, /)\n");
	scanf(" %c", &símbolo);

	switch(símbolo){
	case '+':
		printf("Resultado: %f\n", resultado=numero1+numero2);
		break;
	case '-':
		printf("Resultado: %f\n", resultado=numero1-numero2);
		break;
	case '*':
		printf("Resultado: %f\n", resultado=numero1*numero2);
		break;
	case '/':
		printf("Resultado: %f\n", resultado=numero1/numero2);
		break;
	default:
		printf("Operador no válido\n");
	}

	return EXIT_SUCCESS;
}
