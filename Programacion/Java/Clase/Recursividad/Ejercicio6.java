import java.util.Scanner;

public class Ejercicio6 {
	static Scanner entrada = new Scanner(System.in);

	private static boolean estarOrdenada(String palabra, int longitud) {
		String auxiliar = palabra.toLowerCase();

		if(longitud < 2) {
			return true;
		}

		if(auxiliar.charAt(longitud - 1) < auxiliar.charAt(longitud - 2)) {
			return false;
		}

		return estarOrdenada(auxiliar, longitud - 1);
	}

/*	
	private static boolean estarOrdenado(String Palabra) {
		if(palabra.length() <= 1) {
			return true;
		}

		if(palabra.charAt(0) > palabra.charAt(1)) {
			return false;
		}

		return estarOrdenado(palabra.substring(1));
	}
*/

	public static void main(String [] args) {
		System.out.println("Escriba una palabra cualquiera:");
		String palabra = entrada.nextLine();

		int longitud = palabra.length();
		boolean resultado = estarOrdenada(palabra, longitud);

		if(resultado) {
			System.out.println("La palabra está ordenada.");
		} else {
			System.out.println("La palabra no está ordenada.");
		}
	}
}
