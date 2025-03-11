#include <stdio.h>
#include <stdlib.h>

void numeros_triangulares(int numero){
	static int num = 0;
	static int cant = 0;
	
	if(num == numero){
		return;
	}

	if(num < numero){
		num++;
		cant += num;
		printf("Número %d: %d\n", num, cant);
	}

	return numeros_triangulares(numero);
}

}

int main(){
	int numero = 10;

	numeros_triangulares(numero);

	return EXIT_SUCCESS;
}
