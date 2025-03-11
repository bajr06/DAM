#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	int n1;
	int n2;
	int fact = 1;

	printf("Introduzca un valor cualquier:\n");
	scanf("%d", &n1);

	if(n1 < 0){
		printf("No puedes insertar valores negativos\n");
	}
	else{
		for(n2 = 1; n2 <= n1; n2 ++){
		fact *= n2;
		}
	printf("El factorial del número introducido es: %d\n", fact);
	}

	return EXIT_SUCCESS;
}
