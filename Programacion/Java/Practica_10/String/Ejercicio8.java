import java.util.Scanner;

public class Ejercicio8 {
	static Scanner entrada = new Scanner(System.in);

	public static void main(String [] args) {
		System.out.println("Escriba una palabra");
		String palabra = entrada.nextLine();

		boolean control = palindromo(palabra.trim());

		if(control) {
			System.out.println("La palabra " + palabra + " es un palindromo.");
		} else {
			System.out.println("La palabra " + palabra + " no es un palindromo.");
		}
	}

	private static boolean palindromo(String palabra) {
		for(int i = 0; i < palabra.length(); i++) {
			if(palabra.charAt(i) != palabra.charAt(palabra.length() - i - 1)) {
				return false;
			}
		}

		return true;
	}
}
