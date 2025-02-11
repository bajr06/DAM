#include <stdio.h>
#include <stdlib.h>

#define LIM 10

int main(){
	int cambio;

	printf("El límite es %d\n", LIM);

	cambio = LIM;
	
	printf("El cambio es %d\n", cambio);

	cambio++;

#undef LIM
#ifndef LIM
#define LIM cambio
	
	printf("El límite ahora es %d\n", LIM);

	printf("El cambio ahora es %d\n", cambio);
#else
#error "No ejecutes esto por amor de Dios."
#endif
	
	return EXIT_SUCCESS;
}
