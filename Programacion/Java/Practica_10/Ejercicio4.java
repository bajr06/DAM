import java.util.Scanner;

public class Ejercicio4{
	static int CONTADOR = 100000;
	static Scanner entrada = new Scanner(System.in);

	private static boolean comprobacion(int numero) {
		int copia = numero, suma = 0, digitos = 0;

		while(copia != 0) {
			suma += copia % 10;
			copia /= 10;
			digitos++;
		}

		if(suma == digitos) {
			return true;
		} else {
			return false;
		}
	}

	public static void main(String[] argv) {
		int numero, total = 0;
		boolean control;

		System.out.println("Introduzca los números a sumar:");
		do {
			numero = entrada.nextInt();

			control = comprobacion(numero);

			if(numero > 0 && control) {
				total += numero;
			} else {
				continue;
			}
		} while(numero != 0 && numero > 0);

		System.out.println("La suma total de todos los números que has introducido es " + total);
	}
}
