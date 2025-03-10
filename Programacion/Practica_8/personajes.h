#define MIN 25
#define MAX 200

extern int cantidad;

typedef enum{
	luchador,
	distancia,
	tanque,
	mago,
} clase;

typedef struct{
	int identificador;
	char nombre[MIN];
	char descripcion[MAX];
	int salud;
	int daño;
	clase tipo;
	float suerte;
} personaje;

char * categoria(clase * tipo);

void inicializar_personaje(personaje * campeon, const int identificador, const char * nombre, const char * descripcion, const int salud, const int daño, const clase tipo, const float suerte);

void imprimir_personaje(personaje * campeon);

void imprimir_personajes(personaje * campeon);

personaje * añadir_personaje(personaje * campeon);
