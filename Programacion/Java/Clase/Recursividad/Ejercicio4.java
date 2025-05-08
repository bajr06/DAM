import java.util.Scanner;

public class Ejercicio4 {
	static Scanner entrada = new Scanner(System.in);

	private static boolean esBinario(int numero) {
		if(numero < 10 && (numero == 1 || numero == 0)) {
			return true;
		}

		if(numero % 10 != 0 && numero % 10 != 1) {
			return false;
		}

		return esBinario(numero / 10);
	}

	public static void main(String [] args) {
		System.out.println("Introduce un numero cualquiera:");
		int binario = entrada.nextInt();
		boolean resultado = esBinario(binario);

		if(resultado) {
			System.out.println("El número si es binario.");
		} else {
			System.out.println("El número no es binario.");
		}
	}
}
