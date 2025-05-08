import java.util.Scanner;

public class Ejercicio3 {
	static Scanner entrada = new Scanner(System.in);

	private static int contarDigitos(int numero) {
		if(numero < 10) {
			return 1;
		}

		return 1 + contarDigitos(numero / 10);
	}

	private static int potencial(int base, int exponente) {
		if(exponente == 0) {
			return 1;
		}

		return base * potencial(base, exponente - 1);
	}

	private static int invertir(int numero, int longitud) {
		if(numero <= 0) {
			return 0;
		}

		int modulo = numero % 10;
		int agrandar = potencial(10, longitud - 1);

		return modulo * agrandar + invertir(numero/10, longitud - 1);
	}

	public static void main(String [] args) {
		System.out.println("Introduzca el número entero y positivo a invertir:");
		int numero = entrada.nextInt();
		int longitud = contarDigitos(numero);

		int nuevoNumero = invertir(numero, longitud);

		System.out.println("El número invertido de orden es: " + nuevoNumero);
	}
}
