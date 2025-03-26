import java.util.Scanner;

public class LeerTeclado{
	public static void main(String[] args){
		String Nombre;
		System.out.println("Introduzca su nombre (cadena)");

		Scanner Entrada = new Scanner(System.in);
		Nombre = Entrada.nextLine();
		System.out.println("Hola, " + Nombre);

		System.out.println("Introduzca su edad ");
		int Edad = Entrada.nextInt();
		System.out.println("Edad: " + Edad);

		Entrada.nextLine();

		String Apellido;
		System.out.println("Introduzca su apellido (cadena) ");
		Apellido = Entrada.nextLine();
		System.out.println("Hola, " + Apellido);

		Entrada.close();
	}

	public void Alta_Alumnos(){
		// Se escribirá próximamente este código.
	}
}
