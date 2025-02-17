#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

void imprimirVocales(char * palabra){
	if(*palabra == '\0'){
		return;
	}

	char letra = tolower(*palabra);
	if(letra == 'a' || letra == 'e' || letra == 'i', || letra == 'o' || letra == 'u'){
		printf("%d", *palabra);
	}

	ImprimirVocales(palabra++);
}


int main(){
	char * palabra[] = "Murcielago";
	
	ImprimirVocales(palabra);
	
	return EXIT_SUCCESS;
}
