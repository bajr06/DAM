// package Objetos;

public class PruebaPersona {
	public static void main(String[] args) {
		Persona P1 = new Persona(55, 1.879f, 85.0 , false, "Grave");
		System.out.println(P1.toString());

		P1.setAltura(1.2f);
		System.out.println(P1.toString());
		
		System.out.println("La altura de esta persona es " + P1.getAltura());


		// Persona P2 = new Persona(99);
		// System.out.println(P2.toString());
		//
		// P2.setAltura(3.5);
		// P2.setPeso(55);
		// P2.setPelo(true);
		// P2.setVoz("Metalica");
		// System.out.println("P2 " + P2.toString());
	}
}
