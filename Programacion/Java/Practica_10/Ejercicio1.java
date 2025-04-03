import java.util.Scanner;

public class Ejercicio1{
	static Scanner Entrada = new Scanner(System.in);

	public static void main(String [] argv){
		int Cantidad;

		System.out.println("Introduzca la cantidad de números a procesar:");
		Cantidad = Entrada.nextInt();

		int [] Lista = new int [Cantidad];

		Rellenar_Lista(Lista, Cantidad);

		Analisis_Lista(Lista, Cantidad);
	}

	private static void Rellenar_Lista(int [] Lista, int Cantidad){
		for(int i = 0; i < Cantidad; i ++){
			System.out.println("Introduzca el número " + (i + 1) + ":");
			Lista[i] = Entrada.nextInt();
		}
	}

	private static void Analisis_Lista(int [] Lista, int Cantidad){
		int Mayor = 0, Menor, Aparicion;

		//Encontrar al número mayor.
		for(int j = 0; j < Cantidad; j++){
			if(Lista[j] > Mayor){
				Mayor = Lista[j];
			}
		}

		System.out.println("El número mayor de la lista es: " + Mayor);

		Menor = Mayor;

		// Encontrar al número menor.
		for(int k = 0; k < Cantidad; k++){
			if(Lista[k] < Menor){
				Menor = Lista[k];
			}
		}

		System.out.println("El número menor de la lista es: " + Menor);

		// Saber cuantas veces se repite un número.
		for(int l = 0; l < Cantidad; l++){
			Aparicion = 0;
			int Analisis = Lista[l];

			for(int m = 0; m < Cantidad; m++){
				if(Lista[m] == Analisis){
					Aparicion++;
				}
			}

			System.out.println("El número " + Analisis + " aparece un total de " + Aparicion + " veces.");
		}
	}

	// Entrada.close();
}
