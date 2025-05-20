// package Practica_13;
import java.util.Scanner;

public class CentroEducativo {
	static Scanner entrada = new Scanner(System.in);

	public static void menu() {
		System.out.println("¡Bienvenidos a la base de datos del centro educativo!");
		System.out.println("Escoja una de las siguientes opciones a realizar:");
		System.out.println("1. Crear nuevo trabajador, estudiante o módulo.");
		System.out.println("2. Observar sus carácterísticas.");
		System.out.println("3. Modificar los datos.");
		System.out.println("4 o cualquier numero. Salir");
	}

	public static int tipoTrabajador() {
		System.out.println("¿Qué trabajador o estudiante quieres añadir u observar?");
		System.out.println("1. Administrador.");
		System.out.println("2. Directivo.");
		System.out.println("3. Modulo.");
		System.out.println("4. Profesor.");
		System.out.println("5. Alumno");

		int traest = entrada.nextInt();

		return traest;
	}

	private static Administracion añadirAdministracion() {
		int dni = entrada.nextInt();
		String nombre = entrada.nextLine();
		String apellidos = entrada.nextLine();
		int salario = entrada.nextInt();
		String estudios = entrada.nextLine();
		int antiguedad = entrada.nextInt();

		Administracion administrador = new Administracion(dni, nombre, apellidos, salario, estudios, antiguedad);
		return administrador;
	}

	private static Directivo añadirDirectivo() {
		int dni = entrada.nextInt();
		String nombre = entrada.nextLine();
		String apellidos = entrada.nextLine();
		int salario = entrada.nextInt();
		boolean salesiano = false;
		Turno periodo = null;

		Directivo director = new Directivo(dni, nombre, apellidos, salario, salesiano, periodo);
		return director;
	}

	private static Modulo añadirModulo() {
		String nombre = entrada.nextLine();
		int numeroHoras = entrada.nextInt();
		Profesor docente = null;
		boolean convalidacion = false;
		
		Modulo modulo = new Modulo(nombre, numeroHoras, docente, convalidacion);
		return modulo;
	}

	private static Profesor añadirProfesor() {
		int dni = entrada.nextInt();
		String nombre = entrada.nextLine();
		String apellidos = entrada.nextLine();
		int salario = entrada.nextInt();
		int numeroAsignaturas = entrada.nextInt();
		boolean tutor = false;

		Profesor docente = new Profesor(dni, nombre, apellidos, salario, numeroAsignaturas, tutor);
		return docente;
	}

	private static Alumno añadirAlumno() {
		int dni = entrada.nextInt();
		String nombre = entrada.nextLine();
		String apellidos = entrada.nextLine();
		int fechaNacimiento = entrada.nextInt();
		Sexo genero = Sexo.MASCULINO;
		boolean repetidor = false;
		Modulo [] modulos = {};

		Alumno estudiante = new Alumno(dni, nombre, apellidos, fechaNacimiento, genero, repetidor, modulos);
		return estudiante;
	}

	private static void seleccionarTraest(int traest) {
		switch (traest) {
			case 1:
				System.out.println("Pase los siguientes datos: DNI, Nombre, Apellidos, Salario, Estudios y Antiguedad:");
				Administracion administrador = añadirAdministracion();
				break;
			case 2:
				System.out.println("Pase los siguientes datos: DNI, Nombre, Apellidos, Salario, Salesiano y periodo:");
				Directivo director = añadirDirectivo();
				break;
			case 3:
				System.out.println("Pase los siguientes datos: Nombre, Numero de Horas, Docente y su convalidación");
				Modulo modulo = añadirModulo();
				break;
			case 4:
				System.out.println("Pase los siguientes datos: DNI, Nombre, Apellidos, Salario, Numero de Asignaturas y Tutor:");
				Profesor docente = añadirProfesor();
				break;
			case 5:
				System.out.println("Pase los siguientes datos: DNI, Nombre, Apellidos, Fecha de Nacimiento, Genero, Repetidor y Modulos:");
				Alumno estudiante = añadirAlumno();
				break;
			default:
				break;
		}
	}

	private static void verTraest(int traest) {
		switch (traest) {
			case 1:
				break;
		
			default:
				break;
		}
	}


	public static void main(String[] args) {
		menu();
		int opcion = entrada.nextInt();
		int traest;

		do {
			switch(opcion) {
				case 1:
					traest = tipoTrabajador();
					seleccionarTraest(traest);
					break;
				case 2:
					traest = tipoTrabajador();
					verTraest(traest);
					break;
				default:
					break;
			}

			opcion = entrada.nextInt();
		} while(opcion >= 1 || opcion <= 3);
	}
}
