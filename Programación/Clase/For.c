#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Victor de Juan
 *
*/
int main(){
	int x = 0;
	for (/*Valor Inicial*/ x = 0; /*Condición*/ x < 5; /*Código a ejecutar en bucle*/ x = x + 1){
		printf("%d", x);
	}
			
	printf("Terminado\n");
	/**
	 * 1) Inicializo X = 0
	 * 2) Compruebo si X<5. Como se cumple, ejecuto el interior del bucle.
	 * 3) Printf
	 * 4) Terminando el interior del bucle, ejecuto el "código entre vueltas": x = x + 1.
	 * 5) Vuelvo al punto 2. Compruebo si x<5. Se cumple que x == 1. Ejecuto el interior.
	 * 6) Printf
	 * 7) Terminando el interior del bucle, ejecuto x = x + 1. Ahora 1 bañe 2.
	 * 8) Vuelvo a la conidicón. ¿x<5? Si, interior del bucle.
	 * 9) Printf.
	 * ... Asi sucesivamente.
	 * 17) Vuelvo a la conidicón. ¿x<5? No, salimos del bucle.
	 **/

	return EXIT_SUCCESS;
}
