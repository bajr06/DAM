import java.util.Scanner;

public class Ejercicio6 {
	static Scanner entrada = new Scanner(System.in);

	public static void main(String[] args) {
		String[] palabras = new String[5];
		String cadLar = "";
		int lonMayor = 0;

		System.out.println("Introduzca 5 palabras");
		for(int i = 0; i < 5; i ++) {
			palabras[i] = entrada.nextLine();

			if(palabras[i].length() > lonMayor) {
				cadLar = palabras[i];
				lonMayor = palabras[i].length();
			}
		}

		System.out.println("La palabra con más longitud es: " + cadLar + " con un tamaño de: " + lonMayor + " letras.");
	}
}
