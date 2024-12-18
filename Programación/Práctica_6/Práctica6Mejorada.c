#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_NOMBRE 50
#define MAX_LIBROS 40

#define error(memoria){ \
	if(memoria == NULL){ \
		printf("Error, memoria insuficiente\n"); \
		return EXIT_FAILURE; \
	} \
} \


typedef enum{
	FICCION,
	NO_FICCION,
	POESIA,
	TEATRO,
	ENSAYO,
} genero;

typedef struct{
	int identificador;
	char titulo[MAX_NOMBRE];
	char autor[MAX_NOMBRE];
	float precio;
	genero literario;
	int cantidad;
} libro;

void inicializarLibro(libro * inventario, int id, char * nombre, char * escritor, float costo, genero clase, int cuantidad){
	inventario -> identificador = id;
	strcpy(inventario -> titulo, nombre);
	strcpy(inventario -> autor, escritor);
	inventario -> precio = costo;
	inventario -> literario = clase;
	inventario -> cantidad = cuantidad;
}

int main(int argc, char ** argv){
	libro * catalogo = (libro *)malloc(MAX_LIBROS*sizeof(libro));

	error(catalogo);

	inicializarLibro(&catalogo[0], 1, "To Kill a Mockingbird", "Harper Lee", 15.99, FICCION, 10);
	inicializarLibro(&catalogo[1], 2, "1984", "George Orwell", 12.49, FICCION, 5);
	inicializarLibro(&catalogo[2], 3, "The Great Gatsby", "F. Scott Fitzgerald", 10.99, FICCION, 8);
	inicializarLibro(&catalogo[3], 4, "Moby Dick", "Herman Melville", 18.99, FICCION, 12);
	inicializarLibro(&catalogo[4], 5, "War and Peace", "Leo Tolstoy", 20.00, FICCION, 7);
	inicializarLibro(&catalogo[5], 6, "Pride and Prejudice", "Jane Austen", 14.99, FICCION, 9);
	inicializarLibro(&catalogo[6], 7, "The Catcher in the Rye", "J.D. Salinger", 10.00, FICCION, 6);
	inicializarLibro(&catalogo[7], 8, "The Odyssey", "Homer", 17.49, FICCION, 4);
	inicializarLibro(&catalogo[8], 9, "Ulysses", "James Joyce", 25.00, FICCION, 2);
	inicializarLibro(&catalogo[9], 10, "The Divine Comedy", "Dante Alighieri", 22.00, POESIA, 3);
	inicializarLibro(&catalogo[10], 11, "Leaves of Grass", "Walt Whitman", 13.00, POESIA, 11);
	inicializarLibro(&catalogo[11], 12, "The Iliad", "Homer", 18.50, FICCION, 7);
	inicializarLibro(&catalogo[12], 13, "A Brief History of Time", "Stephen Hawking", 15.00, NO_FICCION, 15);
	inicializarLibro(&catalogo[13], 14, "The Art of War", "Sun Tzu", 9.99, NO_FICCION, 20);
	inicializarLibro(&catalogo[14], 15, "Sapiens: A Brief History of Humankind", "Yuval Noah Harari", 16.49, NO_FICCION, 13);
	inicializarLibro(&catalogo[15], 16, "The Selfish Gene", "Richard Dawkins", 14.00, NO_FICCION, 6);
	inicializarLibro(&catalogo[16], 17, "The Road to Serfdom", "F.A. Hayek", 10.50, NO_FICCION, 5);
	inicializarLibro(&catalogo[17], 18, "The Wealth of Nations", "Adam Smith", 30.00, NO_FICCION, 8);
	inicializarLibro(&catalogo[18], 19, "On the Origin of Species", "Charles Darwin", 24.99, NO_FICCION, 4);
	inicializarLibro(&catalogo[19], 20, "The Prince", "Niccolò Machiavelli", 8.99, NO_FICCION, 14);
	inicializarLibro(&catalogo[20], 21, "Hamlet", "William Shakespeare", 11.50, TEATRO, 6);
	inicializarLibro(&catalogo[21], 22, "Macbeth", "William Shakespeare", 9.50, TEATRO, 8);
	inicializarLibro(&catalogo[22], 23, "Othello", "William Shakespeare", 10.99, TEATRO, 7);
	inicializarLibro(&catalogo[23], 24, "A Doll's House", "Henrik Ibsen", 12.50, TEATRO, 5);
	inicializarLibro(&catalogo[24], 25, "Waiting for Godot", "Samuel Beckett", 13.99, TEATRO, 4);
	inicializarLibro(&catalogo[25], 26, "Death of a Salesman", "Arthur Miller", 14.99, TEATRO, 10);
	inicializarLibro(&catalogo[26], 27, "The Glass Menagerie", "Tennessee Williams", 11.00, TEATRO, 9);
	inicializarLibro(&catalogo[27], 28, "Long Day's Journey into Night", "Eugene O'Neill", 19.50, TEATRO, 3);
	inicializarLibro(&catalogo[28], 29, "The Importance of Being Earnest", "Oscar Wilde", 8.50, TEATRO, 15);
	inicializarLibro(&catalogo[29], 30, "The Waste Land", "T.S. Eliot", 6.99, POESIA, 10);
	inicializarLibro(&catalogo[30], 31, "Paradise Lost", "John Milton", 12.00, POESIA, 7);
	inicializarLibro(&catalogo[31], 32, "Beowulf", "Anonymous", 15.00, POESIA, 5);
	inicializarLibro(&catalogo[32], 33, "Essays", "Michel de Montaigne", 20.00, ENSAYO, 4);
	inicializarLibro(&catalogo[33], 34, "Self-Reliance and Other Essays", "Ralph Waldo Emerson", 9.00, ENSAYO, 9);
	inicializarLibro(&catalogo[34], 35, "Civil Disobedience and Other Essays", "Henry David Thoreau", 7.50, ENSAYO, 11);
	inicializarLibro(&catalogo[35], 36, "Meditations", "Marcus Aurelius", 11.99, ENSAYO, 8);
	inicializarLibro(&catalogo[36], 37, "The Federalist Papers", "Alexander Hamilton, James Madison, John Jay", 18.00, ENSAYO, 5);
	inicializarLibro(&catalogo[37], 38, "The Communist Manifesto", "Karl Marx and Friedrich Engels", 5.99, ENSAYO, 12);
	inicializarLibro(&catalogo[38], 39, "The Republic", "Plato", 16.00, ENSAYO, 6);
	inicializarLibro(&catalogo[39], 40, "Thus Spoke Zarathustra", "Friedrich Nietzsche", 14.99, ENSAYO, 10);

	int escoger;
	printf("Bienvenido a la biblioteca de Pantheon. Escriba el número de una de las siguientes operaciones que deseas ejecutar:\n\
			1. Mostrar todos los libros.\n\
			2. Mostrar el libro que escojas por ID.\n\
			3. Aumentar el stock de un libro através de su ID.\n\
			4. Mostrar todos los libros de una categoría.\n\
			5. Mostrar los libros del autor.\n");
	scanf("%d", &escoger);

	free(catalogo);
}
