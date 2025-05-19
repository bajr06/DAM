// package Programacion.Java.Practica_12.Ejercicio5;

public class Empresa {
	public static void main(String[] args) {
		Empleado E1 = new Empleado("Bryan Andreu Jiménez Rojas", 20, 7000);
		Empleado E2 = new Empleado("Ainhoa Catherine Jiménez Rojas", 10, 2000);
		Empleado E3 = new Empleado("Thiago Aaron Jiménez Rojas", 1, 1500);
		
		System.out.println(E1.toString() + "\n");
		System.out.println(E2.toString() + "\n");
		System.out.println(E3.toString() + "\n");
		
		E1.setSalario(7500.0f);
		E2.setSalario(2500, 10);
		E3.setSalario(30);

		System.out.println(E1.toString() + "\n");
		System.out.println(E2.toString() + "\n");
		System.out.println(E3.toString() + "\n");
    }
}
