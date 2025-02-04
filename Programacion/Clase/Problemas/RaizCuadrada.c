#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(){
	double raiz;
	int valor;
	double radio, area;

	printf("Introduzca cualquier número\n");
	scanf("%d", &valor);
	raiz = sqrt(valor);
	printf("La raíz cuadrada de %d es %lf\n", valor, raiz);

	printf("Introduzca el radio del círculo para calcular su área\n");
	scanf("%lg", &radio);
	area = radio * radio * M_PI; //M_PI está definido en math.h. Es una constante con el valor de pi
	printf("El área del círculo es %lf\n", area);

	return EXIT_SUCCESS;
}
