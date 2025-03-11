#define reservar(variable, nombre, cantidad){ \
	nombre = (variable *) malloc (cantidad * sizeof(variable)); \
	if(nombre == NULL){ \
		puts("Error: Falta de Memoria."); \
		return EXIT_FAILURE; \
	} \
} \

