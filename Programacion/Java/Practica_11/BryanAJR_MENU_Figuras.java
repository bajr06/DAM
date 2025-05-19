import java.util.Scanner;

public class BryanAJR_MENU_Figuras {
	static Scanner entrada = new Scanner(System.in);

	private static void menu() {
		System.out.println("Seleccione una de las siguientes opciones a realizar:");
		System.out.println("1. Realizar un rectángulo (interior vacío o relleno).");
		System.out.println("2. Realizar un triangulo rectángulo (interior relleno o vacio).");
		System.out.println("3. Realizar un triángulo equilátero (interior vacío o relleno).");
		System.out.println("4. Salir.");
	}

	public static int relleno() {
		System.out.println("¿Quieres que la figura este rellena? (Si = 1; No = 2)");
		int respuesta = entrada.nextInt();

		do{
			if(respuesta == 1 || respuesta == 2) {
				return respuesta;
			} else {
				System.out.println("Has escrito una opción inválida, intentalo de nuevo.");
			}
		} while(respuesta != 1 || respuesta != 2);

		return 1;
	}

	public static int opcionEscogida() {
		menu();
		int seleccion = entrada.nextInt();
		
		do {
			switch(seleccion){
				case 1:
					rectangulo();
					break;
				case 2:
					trianguloRectangulo();
					break;
				case 3:
					trianguloEquilatero();
					break;
				case 4:
					return 4;
				default:
					System.out.println("Opcion inválida. Intentalo de nuevo.");
					seleccion = entrada.nextInt();
			}
		menu();
		seleccion = entrada.nextInt();
		} while(seleccion > 0 || seleccion < 5);
		
		return 4;
	}

	private static void rectangulo() {
		System.out.println("¿De qué altura quieres que sea el rectángulo?");
		int altura = entrada.nextInt();

		System.out.println("¿Y la base?");
		int base = entrada.nextInt();

		int respuesta = relleno();

		if(respuesta == 1) {
			for(int i = 0; i < altura; i++) {
				for(int j = 0; j < base; j++) {
					System.out.print("*");
				}
				System.out.println("");
			}
			System.out.print("\n");
		} else if(respuesta == 2) {
			for(int i = 0; i < altura; i++) {
				for(int j = 0; j < base; j++) {
					if((i == 0 || i == altura - 1) || (j == 0 || j == base - 1)) {
						System.out.print("*");
					} else {
						System.out.print(" ");
					}
				}
				System.out.println("");
			}
			System.out.print("\n");
		} else {
			System.out.println("Has escogido algo que no existe. Tienes que repetir todo el proceso nuevamente.");
		}
	}

	private static void trianguloRectangulo() {
		System.out.println("¿De qué altura quieres que sea el triangulo rectángulo?");
		int altura = entrada.nextInt();

		int respuesta = relleno();

		if(respuesta == 1) {
			for(int i = 0; i < altura; i++) {
				for(int j = 0; j <= i; j++) {
					System.out.print("*");
				}
				System.out.println("");
			}
			System.out.print("\n");
		} else if(respuesta == 2) {
			for(int i = 0; i < altura; i++) {
				for(int j = 0; j <= i; j++) {
					if((i == 0 || i == altura - 1) || (j == 0 || j == i)) {
						System.out.print("*");
					} else {
						System.out.print(" ");
					}
				}
				System.out.println("");
			}
			System.out.print("\n");
		} else {
			System.out.println("Has escogido algo que no existe. Tienes que repetir todo el proceso nuevamente.");
		}
	}

	private static void trianguloEquilatero() {
		System.out.println("¿De qué altura quieres que sea el triangulo equilatero?");
		int altura = entrada.nextInt();

		int respuesta = relleno();

		if(respuesta == 1) {
			for(int i = 0; i < altura; i++) {
				for(int j = 0; j < (altura * 2); j++) {
					if(j == ((altura * 2) / 2) || (j >= ((altura * 2) / 2) - i && j <= ((altura * 2) / 2) + i)) {
						System.out.print("*");
					} else {
						System.out.print(" ");
					}
				}
				System.out.println("");
			}
			System.out.print("\n");
		} else if(respuesta == 2) {
			for(int i = 0; i < altura; i++) {
				for(int j = 0; j < (altura * 2); j++) {
					if((i == altura - 1 && j >= 1) || (j == ((altura * 2) / 2) - i || j == ((altura * 2) / 2) + i)) {
						System.out.print("*");
					} else {
						System.out.print(" ");
					}
				}
				System.out.println("");
			}
			System.out.print("\n");
		} else {
			System.out.println("Has escogido algo que no existe. Tienes que repetir todo el proceso nuevamente.");
		}
	}

	public static void main(String[] args) {
		System.out.println("¡Bienvenido al programa de las figuras figurosas!");
		int seleccion = opcionEscogida();

		if(seleccion == 4) {
			System.out.println("Usted ha salido del programa, ¡Qué tenga un buen día!");
		}
	}
}
