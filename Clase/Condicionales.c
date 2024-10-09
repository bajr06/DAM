#include <stdio.h>
#include <stdlib.h>

/**
 * 	Operadores de Comparación
 * 	< Menor
 * 	> Mayor
 *	>= Mayor o igual
 *	<= Menor o igual
 *	!= Distito
 **/


int main(){
	int condition; //El igual es un operador de asignación
	
	printf("Escribe un número:\n");
	scanf("%d", &condition);

	if (condition == 0){  // == es el operador de comparación
	printf("Condición vale 0\n");
	}
	else if(condition == 1){
		printf("Condición vale 1\n");
		}
	else{
		printf("Condición no vale ni 1 ni 0\n");	
	}

	return EXIT_SUCCESS;
}
