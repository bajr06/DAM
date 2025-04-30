//package Examen;
import java.util.Scanner;

public class JimenezRojasBryanAndreu_Examen3 {
	static Scanner entrada = new Scanner(System.in);
	
	public static void main(String[] args) {
		boolean control;
		
		System.out.println("¡Bienvenido a la calculador de números primos!");
		System.out.println("Escriba el rango de números a procesar:");
		int max = entrada.nextInt();
		
		System.out.println("Los números primos entre el 2 y el " + max + " son:");
		for(int i = 2; i < max; i++) {
			control = true;
			for(int j = 2; j < i; j++) {
				if(i % j == 0 && i % j == 0) {
					control = false;
				}
			}
			
			if(control) {
				System.out.print(i + " ");
			}
		}
	}
}
