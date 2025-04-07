import java.util.Scanner;

public class Ejercicio4{
	static Scanner entrada = new Scanner(System.in);

	public static void main(String[] argv) {
		int numero, total = 0;

		System.out.println("Introduzca los números a sumar:");
		do {
			numero = entrada.nextInt();

			if(numero > 0) {
				total += numero;
			}
		} while(numero != 0 && numero > 0);
	}
}
