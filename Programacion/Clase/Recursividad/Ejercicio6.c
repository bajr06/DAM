#include <stdio.h>
#include <stdlib.h>

int prof(char * cadena, int balance){
	static int profundidad_max = 0;

	if(*cadena == '\0'){
		return balance;
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
	char cadena[15] = "((((())";
	int balance = 0;
	int retorno;

	retorno = prof(cadena, balance);

	if(retorno == 0){
		puts("La cadena está balanceada");
	}
	else{
		puts("La cadena no está balanceada");
	}

	return EXIT_SUCCESS;
}
