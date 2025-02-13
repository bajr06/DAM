#include <stdio.h>
#include <stdlib.h>

int contar_pares(int num){
	if(num / 10 <= 0){
		return 0;
	}

	return num/10 + contar_pares(num / 10);
}


int main(){
	int num = 2846;

	printf("El número que %d tiene %d números pares.\n", num, contar_pares(num));

	return EXIT_SUCCESS;
}
