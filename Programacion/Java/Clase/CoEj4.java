import java.util.Scanner;

public class CoEj4 {
	public static void main(String[] args) {
		int numeros = 0, resultado = 0, digitos = 0, total = 0, temp = 0;

		String frase = "";

		Scanner entrada = new Scanner(System.in);

		System.out.println("Introduce un numéro mayor a 0");

		numeros = entrada.nextInt();

		while(numeros > 0) {
			digitos = 0;
			resultado = 0;
			temp = numeros;

			while(temp > 0) {
				resultado += temp % 10;
				digitos += 1;
				temp /= 10;
			}

			if(resultado == digitos) {
				frase += numeros + " + ";
				total += numeros;
			}

			System.out.println("Introduce un numéro mayor a 0");
			numeros = entrada.nextInt();
		}
		
		frase += numeros + " = ";
		System.out.println("El resultado: " + frase + total);

		entrada.close();
	}
}
