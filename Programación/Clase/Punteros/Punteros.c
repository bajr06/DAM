#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	int x = 10;
	int *p; // Esta variable es de tipo "int *", es decir, puntero entero.
		// Esto quiere decir que va a almacenar la dirreción de memoria de una variable t.entero
	p = &x;

	printf("Valor de x: %d\n", x);
	printf("Dirección de x: %p\n", &x);
		//0x7fffbe446b1c
		//0111111111111111101111100100010001101000101100011100 (Revisar valor).
	printf("Valor de p: %p\n", p);

	//¿Como accedo al contenido de una dirección de memoria?
	printf("Contenido de p: %d\n", *p);
	
	printf("Dirección de memoria de la variable p: %p\n", &p);
	printf("Contenido de x: %d\n", *x);
	
	return EXIT_SUCCESS;
}
