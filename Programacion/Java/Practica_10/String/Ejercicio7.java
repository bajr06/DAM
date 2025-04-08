import java.util.Scanner;

public class Ejercicio7 {
	public static void main(String [] args) {
		Scanner entrada = new Scanner(System.in);

		System.out.println("Escriba una frase:");
		String texto = entrada.nextLine();

		int cantidadPalabras = contarPalabras(texto.trim());

		System.out.println("La frase tiene un total de " + cantidadPalabras + " palabras.");

		entrada.close();
	}

	private static int contarPalabras(String texto) {
		int cantidad = 0;

		if(texto.length() == 0) {
			return 0;
		}

		for(int i = 0; i < texto.length(); i++) {
			if(texto.charAt(i) == ' ' && texto.charAt(i + 1) != ' ') {
				cantidad++;
			}
		}

		return cantidad + 1;
	}
}
