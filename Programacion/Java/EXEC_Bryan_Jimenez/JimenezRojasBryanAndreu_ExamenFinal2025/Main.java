package JimenezRojasBryanAndreu_ExamenFinal2025;

import java.util.Scanner;

public class Main {
	static Scanner entrada = new Scanner(System.in);
	static int electricos = 0;
	static int combates = 0;
	
	private static boolean eleccionElectrico(int eleccion) {
		if(eleccion == 1) {
			electricos++;
			return true;
		} else {
			return false;
		}
	}
	
	private static boolean eleccionCombate(int eleccion) {
		if(eleccion == 1) {
			combates++;
			return true;
		} else {
			return false;
		}
	}
	
	private static Tipo eleccionTipo(int eleccion) {
		if(eleccion == 1) {
			return Tipo.VELA;
		} else if(eleccion == 2) {
			return Tipo.PESCA;
		} else {
			return Tipo.PASAJEROS;
		}
	}
	
	public static Barco anaidirBarco() {
		String buffer = entrada.nextLine();

		System.out.print("Marca: ");
		String marca = entrada.nextLine();
		
		System.out.println();
		
		System.out.print("Color: ");
		String color = entrada.nextLine();
		
		System.out.println();
		
		System.out.print("Número de bastidores: ");
		String numeroBastidor = entrada.nextLine();
		
		System.out.println();
		
		System.out.print("Kilometros: ");
		int kilometros = entrada.nextInt();
		
		System.out.println();
		
		System.out.print("Eslora: ");
		int eslora = entrada.nextInt();
		
		System.out.println();
		
		System.out.print("Calado: ");
		int calado = entrada.nextInt();
		
		System.out.println();
		
		System.out.print("Tipo (1 VELA, 2 PESCA, 3 PASAJEROS): ");
		int tipo = entrada.nextInt();
		
		Barco barco = new Barco(marca, color, numeroBastidor, kilometros, eslora, calado, eleccionTipo(tipo));
		
		return barco;
	}
	
	public static Coche anaidirCoche() {
		String buffer = entrada.nextLine();
		
		System.out.print("Marca: ");
		String marca = entrada.nextLine();
		
		System.out.println();
		
		System.out.print("Color: ");
		String color = entrada.nextLine();
		
		System.out.println();
		
		System.out.print("Número de bastidores: ");
		String numeroBastidor = entrada.nextLine();
		
		System.out.println();
		
		System.out.print("Kilometros: ");
		int kilometros = entrada.nextInt();
		
		System.out.println();
		
		System.out.print("¿Es eléctrico? (1 Si, 2 No): ");
		int electrico = entrada.nextInt();

		Coche coche = new Coche(marca, color, numeroBastidor, kilometros, eleccionElectrico(electrico));
		
		return coche;
	}
	
	public static Avion anaidirAvionCombate() {
		String buffer = entrada.nextLine();
		
		System.out.print("Marca: ");
		String marca = entrada.nextLine();
		
		System.out.println();
		
		System.out.print("Color: ");
		String color = entrada.nextLine();
		
		System.out.println();
		
		System.out.print("Número de bastidores: ");
		String numeroBastidor = entrada.nextLine();
		
		System.out.println();
		
		System.out.print("Kilometros: ");
		int kilometros = entrada.nextInt();
		
		System.out.println();
		
		System.out.print("¿Es de combate? (1 Si, 2, No): ");
		int combate = entrada.nextInt();

		Avion avion = new Avion(marca, color, numeroBastidor, kilometros, eleccionCombate(combate));
		
		return avion;
	}
	
	public static Avion anaidirAvion() {	
		String buffer = entrada.nextLine();
		
		System.out.print("Marca: ");
		String marca = entrada.nextLine();
		
		System.out.println();
		
		System.out.print("Color: ");
		String color = entrada.nextLine();
		
		System.out.println();
		
		System.out.print("Número de bastidores: ");
		String numeroBastidor = entrada.nextLine();
		
		System.out.println();
		
		System.out.print("Kilometros: ");
		int kilometros = entrada.nextInt();
		
		System.out.println();
		
		System.out.print("Motores: ");
		byte motores = (byte)entrada.nextInt();
		
		System.out.println();
		
		System.out.print("Velocidad máxima: ");
		double velocidadMax = entrada.nextDouble();
		
		System.out.println();
		
		System.out.print("¿Es de combate? (1 Si, 2, No): ");
		int combate = entrada.nextInt();

		Avion avion = new Avion(marca, color, numeroBastidor, kilometros, motores, velocidadMax, eleccionCombate(combate));
		
		return avion;
	}
	
	public static void menu() {
		System.out.println("1. Los datos de cada uno de los vehículos de la concesionaria.");
		System.out.println("2. La cantidad de coches totales, y cuantos de ellos son electricos y de combate.");
		System.out.println("3. La media de la cantidad de kilometros recorridos por todos los vehiculos.");
		System.out.println("4. Cambiar los datos de los coches que creaste al incio.");
		System.out.println("Cualquier numero. Salir");
	}
	
	public static void mostrarVehiculos(Vehiculo [] lista) {
		for(int i = 0; i < lista.length; i++) {
			System.out.println("Vehiculo " + i + ": " + lista[i].toString());
		}
	}
	
	public static void cantidadVehiculos(Vehiculo [] lista) {
		System.out.println("La lista tienen un total de " + lista.length + " vehiculos: " + electricos + " eléctrico/s y " + combates + " de combate/s.");
	}
	
	public static void mediaKilometros(Vehiculo [] lista) {
		int kilometrosTotales = 0;
		
		for(int i = 0; i < lista.length; i++) {
			kilometrosTotales += lista[i].getKilometros(); 
		}
		
		kilometrosTotales /= lista.length;
		
		System.out.println("La media de la cantidad de kilometros recorridos por todos los vehiculos es de " + kilometrosTotales + " kilometros.");
	}
	
	public static void cambiarDatos(Vehiculo [] lista) {
		System.out.println("¿De cual de los 2 coches que has creado quieres cambiar algún dato?");
		int seleccion = entrada.nextInt();
		
		if(seleccion == 1) {
			System.out.println("Seleccione que quiere cambiarle al coche: ");
			System.out.println("1. Marca");
			System.out.println("2. Color");
			System.out.println("3. Numero de Bastidores");
			System.out.println("4. Kilometros");
			System.out.println("5. Si es electrico (1 Si, 2 No)");
			
			seleccion = entrada.nextInt();
			
			System.out.println("Introduzca el cambio");
			switch(seleccion) {
				case 1:
					String marca = entrada.nextLine();
					lista[0].setMarca(marca);
					break;
				case 2:
					String color = entrada.nextLine();
					lista[0].setColor(color);
					break;
				case 3:
					String numeroBastidores = entrada.nextLine();
					lista[0].setNumeroBastidor(numeroBastidores);
					break;
				case 4:
					int kilometros = entrada.nextInt();
					lista[0].setKilometros(kilometros);
					break;	
			}
		} else if(seleccion == 2) {
			System.out.println("Seleccione que quiere cambiarle al coche: ");
			System.out.println("1. Marca");
			System.out.println("2. Color");
			System.out.println("3. Numero de Bastidores");
			System.out.println("4. Kilometros");
			System.out.println("5. Eslora");
			System.out.println("6. Calado");
			System.out.print("Tipo (1 VELA, 2 PESCA, 3 PASAJEROS): ");
			
seleccion = entrada.nextInt();
			
			System.out.println("Introduzca el cambio");
			switch(seleccion) {
				case 1:
					String marca = entrada.nextLine();
					lista[2].setMarca(marca);
					break;
				case 2:
					String color = entrada.nextLine();
					lista[2].setColor(color);
					break;
				case 3:
					String numeroBastidores = entrada.nextLine();
					lista[2].setNumeroBastidor(numeroBastidores);
					break;
				case 4:
					int kilometros = entrada.nextInt();
					lista[2].setKilometros(kilometros);
					break;
			}
		}
	}
	
	public static void main(String[] args) {
		System.out.println("¡Bienvenidos a la concesionaria de DAM!");
		System.out.println("A continuación añadirá un Coche:");
		Coche c1 = anaidirCoche();
		
		System.out.print("");
		
		System.out.println("Y un Barco:");
		Barco b1 = anaidirBarco();
		
		Coche c2 = new Coche("Hyundia", "Blanco", "8", 2000, true);
		Barco b2 = new Barco("Supra", "Gris", "20", 5000, 2, 1, Tipo.VELA);
		Avion a1 = new Avion("Reservada", "Blanco", "50", 8000, true);
		Avion a2 = new Avion("Boeing", "Azul", "50", 20000, (byte)4, 1500.4, false);

		Vehiculo [] lista = {c1, c2, b1, b2, a1, a2};
		
		System.out.println("Bienvenido al menú de la concesionara");
		System.out.println("Escoja la opción que usted desee de las siguientes: ");
		menu();
		int opcion = entrada.nextInt();
		
		do {
			switch(opcion) {
				case 1:
					mostrarVehiculos(lista);
					break;
				case 2:
					cantidadVehiculos(lista);
					break;
				case 3:
					mediaKilometros(lista);
					break;
				case 4:
					cambiarDatos(lista);
					break;
			}
			
			menu();
			opcion = entrada.nextInt();
		} while(opcion >= 1 && opcion <= 4);
		
		System.out.println("¡Qué tenga un buen día, ciao!");
	}

}
