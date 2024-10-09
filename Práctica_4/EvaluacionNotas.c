#include <stdio.h>
#include <stdlib.h>

int main(){
	int nota;

	printf("Introduce tu calificación:\n");
	scanf("%d", &nota);

	(nota >= 5) ? printf("Aprobado\n") : printf("Suspendido\n");

	return EXIT_SUCCESS;
}
