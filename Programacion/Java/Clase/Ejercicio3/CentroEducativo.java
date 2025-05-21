//package Ejercicio3;

public class CentroEducativo {
	public static void main(String[] args) {
		Administracion administrador1 = new Administracion(02555657, "Bryan", "Jimenez Rojas", 5000, "Ingeniería en Informática", 12);
		Administracion administrador2 = new Administracion(12354326, "Alvaro", "Dominguez de la Torre", 5000, "Matemáticas", 8);
		Alumno alumno1 = new Alumno(64568478, "Lucia", "Moro Jimenez", 2006, Sexo.FEMENINO, false, null);
		Alumno alumno2 = new Alumno(02645651, "Juan", "De la Cosa", 1999, Sexo.MASCULINO, true, null);
		Directivo director1 = new Directivo(46813895, "Valentina", "Carillo Saritama", 3000, false, Turno.MANIANA);
		Directivo director2 = new Directivo(64219751, "Josue", "De las Rozas", 2900, true, Turno.TARDE);
		Modulo modulo1 = new Modulo("Programacion", 400, null, false);
		Modulo modulo2 = new Modulo("Itinerario Personal para la Empleabilidad", 150, null, true);
		Modulo modulo3 = new Modulo("Base de Datos", 500, null, false);
		Profesor profesor1 = new Profesor(12458639, "Sergio", "De la Fuente", 2000, 2, true);
		Profesor profesor2 = new Profesor(0, null, null, 0, 0, false);
		Profesor profesor3 = new Profesor(0, null, null, 0, 0, false);

		System.out.println(administrador1.toString());
		System.out.println(administrador2.toString());
		System.out.println(alumno1.toString());
		System.out.println(alumno2.toString());
		System.out.println(director1.toString());
		System.out.println(director2.toString());
		System.out.println(modulo1.toString());
		System.out.println(modulo2.toString());
		System.out.println(modulo3.toString());
		System.out.println(profesor1.toString());
		System.out.println(profesor2.toString());
		System.out.println(profesor3.toString());
	}
}
