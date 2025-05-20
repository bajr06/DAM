// package Programacion.Java.Practica_9;

import java.util.Scanner;

public class Ejercicio2{
	public static void main(String[] args){
		Scanner Entrada = new Scanner(System.in);
		int Total_Alumnos = 2;
		String [] Nombre = new String[Total_Alumnos];
		String [] Apellidos = new String[Total_Alumnos];
		int [] Edades = new int [Total_Alumnos];

		for(int i = 0; i < Total_Alumnos; i++){
			System.out.println("Introduzca el nombre:");
			Nombre[i] = Entrada.nextLine();

			System.out.println("Introduzca los apellidos:");
			Apellidos[i] = Entrada.nextLine();

			System.out.println("Introduzca la edad:");
			Edades[i] = Entrada.nextInt();

			Entrada.nextLine();

		}

		for(int j = 0; j < Total_Alumnos; j++){
			System.out.println("Nombre: " + Nombre[j] + "; Apellidos: " + Apellidos[j] + "; Edad: " + Edades[j] + ".");
		}

		Entrada.close();
	}
}
