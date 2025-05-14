// package Ejercicio2

public class TodoCoches {
	private static void cocheDeportivo(Coche carro) {
		if(carro.getTipo() == TipoCoche.DEPORTIVO) {
			System.out.println(carro.toString());
		}
	}

	private static void fechaPar(Coche carro) {
		if(carro.getAnio() % 2 == 0) {
			System.out.println(carro.toString());
		}
	}

	public static void main(String[] args) {
		Coche C1 = new Coche("Toyota Supra", "Azul", true, 7499, TipoCoche.DEPORTIVO, 2005, ModalidadSeguro.A_TODO_RIESGO);
		Coche C2 = new Coche("Serie 8400", "Blanco", false, 8601, TipoCoche.UTILITARIO, 2006, ModalidadSeguro.A_TERCEROS);
		Coche C3 = new Coche("Serie 9400", "Azul Oscuro", false, 9444, TipoCoche.FAMILIAR, 2000, ModalidadSeguro.A_TERCEROS);
		Coche C4 = new Coche("Chevrolet Camaro", "Amarillo", true, 4569, TipoCoche.MINI, 1987, ModalidadSeguro.A_TODO_RIESGO);

		System.out.println(C1.toString());
		System.out.println(C2.toString());
		System.out.println(C3.toString());
		System.out.println(C4.toString());

		System.out.println("");

		Coche[] Coches = {C1, C2, C3, C4};

		System.out.println("Comprobando que coches son deportivos...");
		for(int i = 0; i < Coches.length; i++) {
			cocheDeportivo(Coches[i]);
		}

		System.out.println("");

		System.out.println("Comprobando que coches son de años partes...");
		for(int j = 0; j < Coches.length; j++) {
			fechaPar(Coches[j]);
		}
	}
}
