#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <string.h>

#define LIM 5
/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas y Lenoardo Marescutti Mariñas.
 * 	Curso: DAM_1
 *
*/ 

int main() {
    	char palabras[LIM][20] = {"Hola", "que", "tal", "como", "estas"};  // Array de palabras 

    	printf("Palabras sin la letra 'a':\n");
    		for (int j = 0; j < LIM; j++) { // Este bucle pasa por cada candena de carácteres del Array
        	// La condional cumple que si encontramos 'a' o 'A'
        	if (strchr(palabras[j], 'a') || strchr(palabras[j], 'A')){
            		continue; // Se saltará esa palabra y reiniciará el bucle
        	}
		else{ //Y si no es así
        		printf("%s\n", palabras[j]); // La imprimirá
    		}
	}
    return 0;
}

/* Cabe recalcar que en este programa estamos usando 
 * la librería "string.h" para poder 
 * usar la funcion "strchr()", encargada de buscar 
 * un carácter dentro de una cadena de carácteres
*/
