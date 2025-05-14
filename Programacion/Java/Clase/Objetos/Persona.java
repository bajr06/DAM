// package Objetos;

public class Persona {
	public int getEdad() {
		return edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}
	
	public float getAltura() {
		return altura;
	}
	public void setAltura(float altura) {
		this.altura = altura;
	}

	public double getPeso() {
		return peso;
	}
	public void setPeso(double peso) {
		this.peso = peso;
	}

	public boolean isPelo() {
		return pelo;
	}
	public void setPelo(boolean pelo) {
		this.pelo = pelo;
	}

	public String getVoz() {
		return voz;
	}
	public void setVoz(String voz) {
		this.voz = voz;
	}
	
	public Persona(int edad, float altura, double peso, boolean pelo, String voz) {
		// super();
		this.edad = edad;
		this.altura = altura;
		this.peso = peso;
		this.pelo = pelo;
		this.voz = voz;
	}

	@Override
	public String toString() {
		return "Persona [edad = " + edad + ", altura = " + altura + ", peso = " + peso + ", pelo = " + pelo + ", voz = " + voz + "]";
	}

	int edad;
	float altura;
	double peso;
	boolean pelo;
	String voz;
}
