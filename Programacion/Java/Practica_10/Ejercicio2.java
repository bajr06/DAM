import java.util.Scanner;

public class Ejercicio2 {
	static int CONTADOR = 100000;

	static Scanner Entrada = new Scanner(System.in);

	public static void main(String[] argv) {
		int Digitos = 0;

		System.out.println("Introduzca un número cualquiera:");
		int Numero = Entrada.nextInt();
		System.out.print("El número que has introducido es el " + Numero);

		for(int i = 0; i < CONTADOR; i++) {
			while(Numero !=0) {
				Numero = Numero/10;
				Digitos++;
			}
		}

		System.out.println(" y tiene una cantidad de " + Digitos + " dígitos.");
	}
}
