// package Practica_13;
import java.util.Scanner;

public class CentroEducativo {
	static Scanner entrada = new Scanner(System.in);

	public static void menu() {
		System.out.println("¡Bienvenidos a la base de datos del centro educativo!");
		System.out.println("Escoja una de las siguientes opciones a realizar:");
		System.out.println("1. Crear nuevo trabajador, estudiante o módulo.");
		System.out.println("2. Imprimir todas las personas del instituto.");
		System.out.println("3 o cualquier numero. Salir");
		System.out.println("Advertencia: ¡SOLO PUEDE AÑADIR UNA PERSONA DE CADA TIPO!");
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
		System.out.print("DNI: ");
		int dni = entrada.nextInt();

		entrada.nextLine();

		System.out.print("Nombre: ");
		String nombre = entrada.nextLine();

		System.out.print("Apellidos: ");
		String apellidos = entrada.nextLine();

		System.out.print("Salario: ");
		int salario = entrada.nextInt();

		System.out.print("Estudios: ");
		String estudios = entrada.nextLine();

		entrada.nextLine();

		System.out.print("Antiguedad: ");
		int antiguedad = entrada.nextInt();

		Administracion administrador = new Administracion(dni, nombre, apellidos, salario, estudios, antiguedad);
		return administrador;
	}

	private static Directivo añadirDirectivo() {
		System.out.print("DNI: ");
		int dni = entrada.nextInt();

		entrada.nextLine();

		System.out.print("Nombre: ");
		String nombre = entrada.nextLine();

		System.out.print("Apellidos: ");
		String apellidos = entrada.nextLine();

		System.out.print("Salario: ");
		int salario = entrada.nextInt();

		System.out.print("Es salesiano o no: ");
		int isSalesiano = entrada.nextInt();
		
		boolean salesiano = false;
		if(isSalesiano == 1) {
			salesiano = true;
		} else if(isSalesiano == 2) {
			salesiano = false;
		}

		System.out.print("Horario: ");
		int getPeriodo = entrada.nextInt();
		Turno periodo = null;
		if(getPeriodo == 1) {
			periodo = Turno.MANIANA;
		} else if(getPeriodo == 2) {
			periodo = Turno.TARDE;
		}
		

		Directivo director = new Directivo(dni, nombre, apellidos, salario, salesiano, periodo);
		return director;
	}

	private static Modulo añadirModulo() {
		System.out.print("Nombre: ");
		String nombre = entrada.nextLine();

		entrada.nextLine();

		System.out.print("Profesor: ");
		int numeroHoras = entrada.nextInt();
		Profesor docente = null;


		System.out.print("Es convalidable o no:");
		int isCovalidacion = entrada.nextInt();
		boolean convalidacion = false;
		if(isCovalidacion == 1) {
			convalidacion = true;
		} else if(isCovalidacion == 2) {
			convalidacion = false;
		}

		
		Modulo modulo = new Modulo(nombre, numeroHoras, docente, convalidacion);
		return modulo;
	}

	private static Profesor añadirProfesor() {
		System.out.print("DNI: ");
		int dni = entrada.nextInt();

		entrada.nextLine();

		System.out.print("Nombre: ");
		String nombre = entrada.nextLine();

		System.out.print("Apellidos: ");
		String apellidos = entrada.nextLine();

		System.out.print("Salario: ");
		int salario = entrada.nextInt();

		System.out.print("Numero de Asignaturas: ");
		int numeroAsignaturas = entrada.nextInt();

		System.out.print("Es tutor o no:");
		int isTutor = entrada.nextInt();
		boolean tutor = false;
		if(isTutor == 1) {
			tutor = true;
		} else if(isTutor == 2) {
			tutor = false;
		}


		Profesor docente = new Profesor(dni, nombre, apellidos, salario, numeroAsignaturas, tutor);
		return docente;
	}

	private static Alumno añadirAlumno() {
		System.out.print("DNI: ");
		int dni = entrada.nextInt();

		entrada.nextLine();

		System.out.print("Nombre: ");
		String nombre = entrada.nextLine();

		System.out.print("Apellidos: ");
		String apellidos = entrada.nextLine();

		entrada.nextLine();

		System.out.print("Fecha de Nacimiento: ");
		int fechaNacimiento = entrada.nextInt();

		System.out.print("Genero: ");
		int getGenero = entrada.nextInt();
		Sexo genero = null;
		if(getGenero == 1) {
			genero = Sexo.MASCULINO;
		} else if(getGenero == 2) {
			genero = Sexo.FEMENINO;
		}

		System.out.print("Es repetidor o no:");
		int isRepetidor = entrada.nextInt();
		boolean repetidor = false;
		if(isRepetidor == 1) {
			repetidor = true;
		} else if(isRepetidor == 2) {
			repetidor = false;
		}

		Modulo [] modulos = {};


		Alumno estudiante = new Alumno(dni, nombre, apellidos, fechaNacimiento, genero, repetidor, modulos);
		return estudiante;
	}

	private static void seleccionarTraest(int traest) {
		switch (traest) {
			case 1:
				System.out.println("Pase los siguientes datos: DNI, Nombre, Apellidos, Salario, Estudios y Antiguedad:");
				break;
			case 2:
				System.out.println("Pase los siguientes datos: DNI, Nombre, Apellidos, Salario, Salesiano (si es salesiano 1 y si no lo es 2) y periodo (1 mañana, 2 tarde): ");
				break;
			case 3:
				System.out.println("Pase los siguientes datos: Nombre, Numero de Horas, Docente (en un principio es nulo, pero al añadir un profesor, se hará automáticamente) y su convalidación (1 si es convalidable, 2 si no lo es)");
				break;
			case 4:
				System.out.println("Pase los siguientes datos: DNI, Nombre, Apellidos, Salario, Numero de Asignaturas y Tutor (si es tutor 1, si no lo es 2):");
				break;
			case 5:
				System.out.println("Pase los siguientes datos: DNI, Nombre, Apellidos, Fecha de Nacimiento, Genero (1 Masculino, 2 Femenino), Repetidor (si es repetidor 1, si no 2) y Modulos (con valor nulo en un inicio, pero al añadir un módulo, se agregará automáticamente):");
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
		Administracion administrador = null;
		Directivo director = null;
		Modulo modulo = null;
		Modulo [] modulos = {modulo};
		Profesor docente = null;
		Alumno estudiante = null;

		do {
			if(opcion == 1) {
					traest = tipoTrabajador();
					seleccionarTraest(traest);

					switch (traest) {
						case 1:
							administrador = añadirAdministracion();
							break;
						case 2:
							director = añadirDirectivo();
							break;
						case 3:
							modulo = añadirModulo();
							if(docente != null) {
								modulo.setDocente(docente);
							}
							break;
						case 4:
							docente = añadirProfesor();
							break;
						case 5:
							estudiante = añadirAlumno();
							if(modulo != null) {
								estudiante.setModulos(modulos);
							}
							break;																			
						default:
							System.out.println("No existe la opción que has escogido.");
							break;
					}

			} else if(opcion == 2) {
					traest = tipoTrabajador();
					verTraest(traest);

					switch (traest) {
						case 1:
							administrador.toString();
							break;
						case 2:
							director.toString();
							break;
						case 3:
							modulo.toString();
							break;
						case 4:
							docente.toString();
							break;
						case 5:
							estudiante.toString();
							break;																			
						default:
							
							break;
					}
			} else {
				System.out.println("Antes de todo, este programa es una versión beta que se irá mejorando con el pasar del tiempo.");
				System.out.println("Ahora si, gracias por usar el programa, ¡Hasta pronto!");
			}

			menu();
			opcion = entrada.nextInt();
		} while(opcion == 1 || opcion == 2);
	}
}
