#include <stdio.h>
#include <stdlib.h> // Para malloc, free, etc.

int main(){
	int *p = (int *)malloc(sizeof(int)); // Reservar espacio para un int
	// Aquí hay un casting explícito (Se lo puede hacer de manera implícita).
	// Malloc devuelve un void*.
	// Hay que convertirlo para poder utilizarlo.
	// Es una buena práctica escribirlo como casting.

	if (p == NULL){ // Malloc ha fallado.
		printf("Error: no se pudo asignar memoria.\n"); // Porque no hay memoria disponible.
		return 1; // El programa ha fallado.
	}

	*p = 42; // Usamos la memoria
	printf("El valor es: %d\n", *p);
	free(p); // Liberamos la memoria reservada

	return EXIT_SUCCESS;
}
