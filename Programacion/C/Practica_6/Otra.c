#include <stdio.h>
#include <stdlib.h>

/* 
 *  Autor: Bryan Andreu Jiménez Rojas.
 *  Curso: Desarrollo de Aplicaciones Multiplataforma 1.
*/ 

// Definición de constantes que se usan pero no cambian.
#define MAX_NOMBRE 50
#define MAX_LIBROS 40
#define MIN_LIBROS 1

// Definición de tipo de dato "genero".
typedef enum{
	FICCION, // = 0
	NO_FICCION, // = 1
	POESIA, // = 2
	TEATRO, // = 3
	ENSAYO, // = 4
} genero;

// Definición del tipo de dato compuesto "libro".
typedef struct{
	int identificador;
	char titulo [MAX_NOMBRE];
	char autor [MAX_NOMBRE];
	float precio;
	genero literario;
	int cantidad;
} libro;

// Transforma el tipo de dato "genero" en un printf de su categoría correspondiente.
char *categoria(genero *tipo){
    switch(*tipo){
        case 0:
            return "FICCION";
            break;
        case 1:
            return "NO_FICCION";
            break;
        case 2:
            return "POESIA";
            break;
        case 3:
            return "TEATRO";
            break;
        case 4:
            return "ENSAYO";
            break;
        default:
            return "GENERO NO ENCONTRADO";
    }
}

inicializarLibro(){
    
}

int main(int argc, char **argv){

        inicializarLibro(1, "To Kill a Mockingbird", "Harper Lee", 15.99, FICCION, 10);
        inicializarLibro(3, "The Great Gatsby", "F. Scott Fitzgerald", 10.99, FICCION, 8);
        inicializarLibro(4, "Moby Dick", "Herman Melville", 18.99, FICCION, 12);
        inicializarLibro(5, "War and Peace", "Leo Tolstoy", 20.00, FICCION, 7);
        inicializarLibro(6, "Pride and Prejudice", "Jane Austen", 14.99, FICCION, 9);
        inicializarLibro(7, "The Catcher in the Rye", "J.D. Salinger", 10.00, FICCION, 6);
        inicializarLibro(10, "The Divine Comedy", "Dante Alighieri", 22.00, POESIA, 3);
        inicializarLibro(11, "Leaves of Grass", "Walt Whitman", 13.00, POESIA, 11);
        inicializarLibro(13, "A Brief History of Time", "Stephen Hawking", 15.00, NO_FICCION, 15);
        inicializarLibro(14, "The Art of War", "Sun Tzu", 9.99, NO_FICCION, 20);
        inicializarLibro(15, "Sapiens: A Brief History of Humankind", "Yuval Noah Harari", 16.49, NO_FICCION, 13);
        inicializarLibro(16, "The Selfish Gene", "Richard Dawkins", 14.00, NO_FICCION, 6);
        inicializarLibro(17, "The Road to Serfdom", "F.A. Hayek", 10.50, NO_FICCION, 5);
        inicializarLibro(18, "The Wealth of Nations", "Adam Smith", 30.00, NO_FICCION, 8);
        inicializarLibro(19, "On the Origin of Species", "Charles Darwin", 24.99, NO_FICCION, 4);
        inicializarLibro(20, "The Prince", "Niccolò Machiavelli", 8.99, NO_FICCION, 14);
        inicializarLibro(21, "Hamlet", "William Shakespeare", 11.50, TEATRO, 6);
        inicializarLibro(22, "Macbeth", "William Shakespeare", 9.50, TEATRO, 8);
        inicializarLibro(23, "Othello", "William Shakespeare", 10.99, TEATRO, 7);
        inicializarLibro(24, "A Doll's House", "Henrik Ibsen", 12.50, TEATRO, 5);
        inicializarLibro(25, "Waiting for Godot", "Samuel Beckett", 13.99, TEATRO, 4);
        inicializarLibro(26, "Death of a Salesman", "Arthur Miller", 14.99, TEATRO, 10);
        inicializarLibro(27, "The Glass Menagerie", "Tennessee Williams", 11.00, TEATRO, 9);
        inicializarLibro(28, "Long Day's Journey into Night", "Eugene O'Neill", 19.50, TEATRO, 3);
        inicializarLibro(29, "The Importance of Being Earnest", "Oscar Wilde", 8.50, TEATRO, 15);
        inicializarLibro(30, "The Waste Land", "T.S. Eliot", 6.99, POESIA, 10);
        inicializarLibro(31, "Paradise Lost", "John Milton", 12.00, POESIA, 7);
        inicializarLibro(33, "Essays", "Michel de Montaigne", 20.00, ENSAYO, 4);
        inicializarLibro(34, "Self-Reliance and Other Essays", "Ralph Waldo Emerson", 9.00, ENSAYO, 9);
        inicializarLibro(35, "Civil Disobedience and Other Essays", "Henry David Thoreau", 7.50, ENSAYO, 11);
        inicializarLibro(36, "Meditations", "Marcus Aurelius", 11.99, ENSAYO, 8);
        inicializarLibro(37, "The Federalist Papers", "Alexander Hamilton, James Madison, John Jay", 18.00, ENSAYO, 5);
        inicializarLibro(38, "The Communist Manifesto", "Karl Marx and Friedrich Engels", 5.99, ENSAYO, 12);
        inicializarLibro(40, "Thus Spoke Zarathustra", "Friedrich Nietzsche", 14.99, ENSAYO, 10);

    // El usuario escoje que operación desea realizar de las siguientes
    printf("Lista de argumentos\n");

        for (int i = 0; i < argc; ++i){
            printf("\tArgumento %d: %s\n", i, argv[i]); 
        }

	return EXIT_SUCCESS;
}
