/*
 * Clase Coche: con Marca, Modelo y Potencia.
 * @author
*/

//package P1;

public class Coche(){
	private String Marca;
	private String Modelo;
	private int Potencia;

	// Constructor, con todos los datos del coche.
	public Coche(String Marca, String Modelo) {
		// super();
		this.Marca = Marca;
		this.Modelo = Modelo;
		this.Potencia = 0;
	}

	public Coche(String Marca, String Modelo, int Potencia) {
		// super();
		this.Marca = Marca;
		this.Modelo = Modelo;
		this.Potencia = Potencia;
	}

	//Métodos = Funciones.
	//Getterns y Setters,.

	public String Get_Marca() {
		return this.Marca;
	}

	public String Get_Modelo() {
		return this.Modelo;
	}
	
	public int Get_Potencia() {
		return this. Potencia;
	}

	// Setters: Funciones que nos permiten modificar.
	public void Set_Marca(String m) {
		this.Marca = m;
	}

	public void Set_Modelo(String m) {
		this.Modelo = m;
	}

	public void Set_Potencia(int p) {
		this.Potencia = p;
	}

	@Override
	public String toString() {
		return "Coche [Marca = " + Marca + ", Modelo = " + Modelo + ", Potencia = " + Potencia + "]";
	}
}
