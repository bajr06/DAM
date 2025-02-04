#include <stdio.h>
#include <stdlib.h>

int contar(char * palabra, int cantidad){
	if(palabra[cantidad] == '\0'){
		return cantidad;
	}
	
	cantidad++;
	return contar(palabra, cantidad);
}


int main(){
	char str[10] = "Hola";
	int cantidad = 0;

	printf("La palabra %s tiene %d letras\n", str, contar(str, cantidad));

	return EXIT_SUCCESS;
}
