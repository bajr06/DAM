#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define error(memoria){ \
	if(memoria == NULL){ \
		puts("ERROR: Falta de memoria."); \
		exit(EXIT_FAILURE); \
	} \
} \


int cifrado_cesar (char * clave, const int saltos){
	printf("Cadena actual: %s\n", clave);


	for(int i = 0; i < strlen(clave); i++){
		clave[i] = (int)clave[i];


		printf("Número [%d]: %d\n", i, clave[i]);
		
		if((clave[i] >= 65 && clave[i] <= 90) || (clave[i] >= 97 && clave[i] <= 122)){
			clave[i] += saltos;
			
			if(clave[i] > 90){
				clave[i] -= 25;
			}
			else if (clave[i] > 122){
				clave[i] -= 25;
			}
		}
		else{
			puts("ERROR: Caracter no identificado");
			return EXIT_FAILURE;
		}

		printf("Número modificado [%d]: %d\n", i, clave[i]);
	}

	printf("Cadena cifrada: %s\n", clave);

	return EXIT_SUCCESS;
}


int main(){
	int cantidad, control;

	puts("¿De cuantos carácteres será tu clave?");
	control = scanf("%d", &cantidad);
	
	printf("\n");

	if(control == 0){
		printf("Recuerda meter valores enteros, no de otro tipo...\n");
		return EXIT_FAILURE;
	}
	
	char * clave = (char *)malloc(cantidad * sizeof(char));
	error(clave);

	getchar();
	puts("Introduzca la clave:");
	fgets(clave, cantidad, stdin);
	clave[strlen(clave) - 1] = '\0';
	
	puts("");

	int saltos;
	printf("¿De cuantos saltos quieres que sea el cifrado?");
	scanf("%d", &saltos);

	printf("\n");

	cifrado_cesar(&clave[0], saltos);

	puts("");

	free(clave);

	return EXIT_SUCCESS;
}
