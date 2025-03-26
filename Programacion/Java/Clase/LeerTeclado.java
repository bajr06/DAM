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

		boolean Alta[];
		
		Alta = AltaAlumnos(Entrada, Alta);

		Entrada.close();
	}

	public boolean Alta_Alumnos(){
		System.out.println("Introduc");
		return true;
	}
}
