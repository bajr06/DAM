import java.util.Scanner;

public class Ejercicio2 {
	static Scanner entrada = new Scanner(System.in);

	private static int potencia(int base, int exponente, int resultado, int vueltas) {
		if(exponente == 0) {
			return 1;
		} else if(exponente == 1) {
			return base;
		} else if(vueltas == exponente) {
			return resultado;
		}

		resultado = resultado * base;
		vueltas++;

		return potencia(base, exponente, resultado, vueltas);
	}

/*
	private static int potencial(int base, int exponente) {
		if(exponente == 0) {
			return 1;
		}

		return base * potencial(base, exponente - 1);
	}
*/

	public static void main(String [] args) {
		System.out.println("Introduzca la base (numero entero y positivo):");
		int base = entrada.nextInt();

		System.out.println("Introduzca el exponente (con las mismas condiciones que el anterior):");
		int exponente = entrada.nextInt();

		int resultado = potencia(base, exponente, 1, 0);

		System.out.println("El resultado de la potencia es: " + resultado);
	}
}
