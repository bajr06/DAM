#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

int main(){
	char Animal[10];

	printf("Que deseas imprimir, ¿Un Perro o un Gato?\n");
	scanf("%s", Animal);

	if(Animal[0]=='P'){
		printf("		            __\n\
		( /,--------'()'--o\n\
	 	(_    ___    /~'\n\
		  (_)_)  (_)_) \n");
	}
	else if(Animal[0]=='G'){
		printf("		  //_//  (\n\
		 ( ^.^ ) _)\n\
		   /'/  (\n\
		 ( | | )\n\
		(__d b__) \n");
	}
	else{
		printf("No tenemos ese animal\n");
	}

	return EXIT_SUCCESS;
}
