#include <stdio.h>
#include <stdlib.h>

int prof(char * cadena, int balance){
	static int profundidad_max = 0;

	if(*cadena == '\0'){
		return profundidad_max;
	}

	profundidad_max = balance > profundidad_max ? balance : profundidad_max;

	if(*cadena == '('){
		return prof(cadena + 1, balance + 1);
	}
	else if(*cadena == ')'){
		return prof(cadena + 1, balance - 1);
	}
	else{
		return prof(cadena + 1, balance);
	}
}

int main(){
	char cadena1[15] = "(())()((())())";
	int balance = 0;
	char cadena2[15] = "())))(((()()((";

	printf("El número balance 1 es: %d\n", prof(cadena1, balance));
	printf("El número balance 2 es: %d\n", prof(cadena2, balance));

	return EXIT_SUCCESS;
}
