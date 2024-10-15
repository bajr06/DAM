#include <stdio.h>
#include <stdlib.h>

int main(){
	float X=1.25;
	float Y=2.2;
	float multiplicacion, division;

	multiplicacion=X*Y;
	division=X/Y;

	printf("La división entre %.1f y %.1f es igual a %f\n", X, Y, multiplicacion);
	printf("La multiplicación entre %.1f y %.1f es igual a %f\n", X, Y, division);

	return EXIT_SUCCESS;
}
			
