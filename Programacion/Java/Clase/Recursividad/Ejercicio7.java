import java.util.Scanner;

public class Ejercicio7 {
	static Scanner entrada = new Scanner(System.in);

	private static int sumaNatural(int numero) {
		if(numero == 1) {
			return 1;
		}
		
		int suma = sumaNatural(numero - 1);

		return suma + numero;
	}

	public static void main(String [] args) {
		System.out.println("Escriba un número entero positivo a factorizar:");
		int numero = entrada.nextInt();

		int resultado = sumaNatural(numero);

		System.out.println("La suma de todos los números anteriores es: " + resultado);
	}
}
