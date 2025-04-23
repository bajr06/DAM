import java.util.Scanner;

public class Ejercicio1 {
	static Scanner entrada = new Scanner(System.in);

	private static void menu() {
		System.out.println("Seleccione una de las siguientes opciones a realizar:");
		System.out.println("1. Realizar un triangulo equilatero.");
		System.out.println("2. Realizar un triangulo relleno.");
		System.out.println("3. Relizar un cuadrado.");
		System.out.println("4. Salir.");
	}

	public static void main(String[] args) {
		int seleccion;

		System.out.println("¡Bienvenido al programa de las figuras figurosas!");
		do {
			menu();
			seleccion = entrada.nextInt();

			switch(seleccion) {
				case 1:
					System.out.println("Has seleccionado la opción de dibujar un triangulo equilatero.");
					break;
				case 2:
					System.out.println("Has seleccionado la opción de dibujar un triangulo relleno.");
					break;
				case 3:
					System.out.println("Has seleccionado la opción de dibujar un cuadrado");
					break;
				default:
					System.out.println("Usted ha salido del programa, ¡Qué tenga una buen día!");

			}
		}
	}
}
