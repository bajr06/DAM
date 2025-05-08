import java.util.Scanner;

public class Ejercicio1 {
	static Scanner entrada = new Scanner(System.in);

	private static int cantidadDigitos(int n, int divisor, int cantidad) {
		if(n <= 0 || n / divisor == 0) {
			return cantidad;
		}
		
		cantidad++;
		divisor = divisor * 10;

		return cantidadDigitos(n, divisor, cantidad);
	}

/*
	private static int contarDigitos(int n) {
		if(n < 10) {
			return 1;
		}

		return 1 + contarDigitos(n/10);
	}
*/

	public static void main(String [] args) {
		System.out.println("Introduzca un número entero mayor a 0:");
		int n = entrada.nextInt();

		int cantidad = cantidadDigitos(n, 1, 0);

		if(n <= 0) {
			System.out.println("Ese valor no corresponde con lo pedido.");
		} else {
			System.out.println("El número que has introducido tiene " + cantidad + " dígitos");
		}
	}
}
