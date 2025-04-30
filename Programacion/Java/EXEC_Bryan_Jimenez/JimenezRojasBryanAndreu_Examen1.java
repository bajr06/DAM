// package Examen;
import java.util.Scanner;

public class JimenezRojasBryanAndreu_Examen1 {
	static Scanner entrada = new Scanner(System.in);
	
	public static void opciones() {
		System.out.println("Escoja una de las siguiente funciones a ejecutar:");
		System.out.println("1. Sumar");
		System.out.println("2. Restar");
		System.out.println("3. Multiplicar");
		System.out.println("4. Dividir");
		System.out.println("5. Calcular porcentaje");
		System.out.println("Cualquier otro numero. Salir");
	}
	
	private static int cantidad() {
		System.out.println("¿Cuántos números quieres procesar?");
		int cantidad = entrada.nextInt();
		
		if(cantidad <= 0) {
			System.out.println("Has introducido un valor incorrecto, por lo que se colocará de manera predeterminada 2");
			cantidad = 2;
		}
		
		return cantidad;
	}
	
	private static int sumar() {
		int cantNum = cantidad();
		int numero, suma = 0;
		
		for(int i = 1; i <= cantNum; i++) {
			System.out.println("Introduzca el número " + i + ":");
			numero = entrada.nextInt();
			suma += numero;
		}
		
		return suma;
	}
	
	private static int restar() {
		int cantNum = cantidad();
		int numero, resta = 0;
		
		for(int i = 1; i <= cantNum; i++) {
			System.out.println("Introduzca el número " + i + ":");
			numero = entrada.nextInt();
			
			if(i == 1) {
				resta = numero;
			} else {
				resta -= numero;
			}
		}
		
		return resta;
	}
	
	private static int multiplicar() {
		int cantNum = cantidad();
		int numero, multiplicacion = 0;
		
		for(int i = 1; i <= cantNum; i++) {
			System.out.println("Introduzca el número " + i + ":");
			numero = entrada.nextInt();
			
			if(i == 1) {
				multiplicacion = numero;
			} else {
				multiplicacion *= numero;
			}
		}
		
		return multiplicacion;
	}
	
	private static int dividir() {
		int cantNum = cantidad();
		int numero, division = 0;
		
		for(int i = 1; i <= cantNum; i++) {
			System.out.println("Introduzca el número " + i + ":");
			numero = entrada.nextInt();
			
			if(i == 1) {
				division = numero;
			} else {
				division /= numero;
			}
		}
		
		return division;
	}
	
	private static float porcentaje() {
		System.out.println("Introduzca el numero:");
		float numero = entrada.nextFloat();
		
		System.out.println("Introduzca el porcentaje a calcular");		
		float porcentaje = entrada.nextFloat();
		
		porcentaje = (float)(porcentaje * 0.010);
		porcentaje = numero * porcentaje;
				
		return porcentaje;
	}
	
	public static void menu() {
		int resultado;
		opciones();
		int opcion = entrada.nextInt();
		
		do {
			switch(opcion) {
			case 1:
				resultado = sumar();
			
				System.out.println("El resultado de la suma es " + resultado);
				break;
			case 2:
				resultado = restar();
			
				System.out.println("El resultado de la resta es " + resultado);
				break;
			case 3:
				resultado = multiplicar();
			
				System.out.println("El resultado de la multiplicacion es " + resultado);
				break;
			case 4:
				resultado = dividir();
			
				System.out.println("El resultado de la division es " + resultado);
				break;
			case 5:
				float result = porcentaje();
			
				System.out.println("El resultado del porcentaje es de " + result);
				break;
			default:
				return;
			}
			
			opciones();
			opcion = entrada.nextInt();
		} while(opcion >= 1 && opcion < 6);
	}
	
	public static void main(String[] args) {
		System.out.println("¡Bienvenido a la calculadora portatil de Java!");
		menu();
		
		System.out.println("¡Hasta la próxima!");
	}
}
