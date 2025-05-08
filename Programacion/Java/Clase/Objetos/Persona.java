// package Objetos;


public class Persona {
	private int getEdad() {
		return edad;
	}
	private void setEdad(int edad) {
		this.edad = edad;
	}
	
	private float getAltura() {
		return altura;
	}
	private void setAltura(float altura) {
		this.altura = altura;
	}

	private double getPeso() {
		return peso;
	}
	private void setPeso(double peso) {
		this.peso = peso;
	}

	private boolean isPelo() {
		return pelo;
	}
	private void setPelo(boolean pelo) {
		this.pelo = pelo;
	}

	private String getVoz() {
		return voz;
	}
	private void setVoz(String voz) {
		this.voz = voz;
	}
	
	public Persona(int edad, float altura, double peso, boolean pelo, String voz) {
		super();
		this.edad = edad;
		this.altura = altura;
		this.peso = peso;
		this.pelo = pelo;
		this.voz = voz;
	}

	int edad;
	float altura;
	double peso;
	boolean pelo;
	String voz;
}
