// package Examen;
import java.util.Scanner;

public class JimenezRojasBryanAndreu_Examen2 {
	static Scanner entrada = new Scanner(System.in);
	
	public static void main(String[] args) {
		System.out.println("¡Bienvenido al graficador de triangulos inversos!");
		System.out.println("Introduzca el tamaño de la figura");
		int tamano = entrada.nextInt();
		
		for(int i = 0; i < tamano; i ++) {
			for(int j = 0; j < (tamano * 2); j++) {
				if(j >= (tamano - i) && j <= (tamano - 1 + i)) {
					System.out.print(" ");
				} else {
					System.out.print("*");
				}
			}
			System.out.println("");
		}
	}
}
