import java.util.Scanner;

public class Ejercicio5 {
	static Scanner entrada = new Scanner(System.in);

	private static String alReves(String resultado) {
		String auxiliar = "";
		
		for(int i = resultado.length() - 1; i >= 0; i--) {
			auxiliar += resultado.charAt(i);
		}

		return auxiliar;
	}

	private static String pasarBinario(int numero, String resultado) {
		if(numero == 0) {
			return resultado;
		}

		resultado += numero % 2;
		numero /= 2;

		return pasarBinario(numero, resultado);
	}

/*
	private static String transBinario(int numero){
		if(numero == 0) {
			return "0";
		} else if(numero == 1) {
			return "1";
		}

		return transBinario(numero / 2) + (numero % 2);
	}
*/

	public static void main(String [] args) {
		System.out.println("Escriba un número entero positivo:");
		int numero = entrada.nextInt();

		String resultado = "";
		resultado = pasarBinario(numero, resultado);
		resultado = alReves(resultado);

		System.out.println("El numero que has pasado, en binario es: " + resultado);
	}
}
