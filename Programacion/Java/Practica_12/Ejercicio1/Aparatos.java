// package Practica_12;

public class Aparatos {
	public static void main(String[] args) {
		AparatoElectrico AE1 = new AparatoElectrico("Bombilla", 100);
		System.out.println(AE1.toString());

		AparatoElectrico AE2 = new AparatoElectrico("Radiador", 2000);
		System.out.println(AE2.toString());

		AparatoElectrico AE3 = new AparatoElectrico("Plancha", 1200);
		System.out.println(AE3.toString());

		System.out.println("Consumo total actual: " + AparatoElectrico.getConsumoTotal() + "W");
		
		AE1.encender();
		AE3.encender();

		System.out.println("Consumo total actual: " + AparatoElectrico.getConsumoTotal() + "W");

		AE3.apagar();
		AE2.encender();
		System.out.println("Consumo total actual: " + AparatoElectrico.getConsumoTotal() + "W");
	}
}
