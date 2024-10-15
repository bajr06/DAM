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
	char c;

	printf("Escribe un número:\n");
	scanf("%d", &condition);

	//c = (condition % 2) ? 'I' : 'P'; Par e impar,  el símbolo de porcentaje divide
	c = (condition > 5) ? 'S' : 'N';
	printf("%c\n",c);
	
	/* Es equivalente a:
	 *	if (condition > 5){
	 *		c= '5';
	 *	} else{
	 *		c='N';
	 *	}
	 */

	return EXIT_SUCCESS;
}
