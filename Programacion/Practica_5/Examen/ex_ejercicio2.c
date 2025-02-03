#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <string.h>

#define LIM 36

/*
 * 	Autor: Bryan Andreu Jiménez Rojas y Lenoardo Marescutti Mariñas.
 * 	Curso: DAM_1
*/ 

int main(){
	char palabras[LIM][20] = {"Hola", "que", "tal", "como", "estas", "casa", "arbol", "perro", "gato", "auto", "bicicleta", "sol", "luna", "estrella", "montaña", "río", "mar", "tierra", "agua", "aire", "metal", "bosque", "flor", "lluvia", "trueno", "viento", "tormenta", "nieve", "campo", "ciudad", "puente", "edificio", "escalera","pintura", "escultura", "aguacate"};  // Array de palabras 
	int cantidad = 0;

	printf("Palabras sin la letra 'a':\n");
    	for (int i = 0; i < LIM; i++) { //Este bucle pasa por cada candena de carácteres del Array
        	// La condional cumple que si encontramos 'a' o 'A'
        	if(strchr(palabras[i], 'a') || strchr(palabras[i], 'A')){
            		continue; // Se saltará esa palabra y reiniciará el bucle
    		}
		else{
			printf("%s\n", palabras[i]);
		}
	}
	
	for (int j = 0; j < LIM; j++){
		if(strchr(palabras[j], 'e') || strchr(palabras[j], 'E')){
			cantidad++;
		}
		else{
			continue;
		}
	}
	printf("Cantidad de palabras con la letra 'e': %d\n", cantidad);
	
	printf("Palabras con la letra 'g':\n");
	for(int k = 0; k < LIM; k++){
		if(strchr(palabras[k], 'g') || strchr(palabras[k], 'G')){
                        printf("%s\n", palabras[k]);
                }
		else{
			continue;
		}
	}

	printf("Palabras con la letra 'e' y 'g':\n");
	for(int l = 0; l < LIM; l++){
		if((strchr(palabras[l],'g') || strchr(palabras[l], 'G')) && (strchr(palabras[l], 'e') || strchr(palabras[l], 'E'))){
			printf("%s\n", palabras[l]);
		}
		else{
			continue;
		}
	}

    return 0;
}

/* Cabe recalcar que en este programa estamos usando 
 * la librería "string.h" para poder 
 * usar la funcion "strchr()", encargada de buscar 
 * un carácter dentro de una cadena de carácteres
*/
