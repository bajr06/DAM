package JimenezRojasBryanAndreu_ExamenFinal2025;

public class Vehiculo {
	String marca;
	String color;
	String numeroBastidor;
	int kilometros;
	int anioFabricacion;
	
	public Vehiculo(String marca, String color, String numeroBastidor, int kilometros) {
		this.marca = marca;
		this.color = color;
		this.numeroBastidor = numeroBastidor;
		this.kilometros = kilometros;
	}

	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}

	public String getNumeroBastidor() {
		return numeroBastidor;
	}
	public void setNumeroBastidor(String numeroBastidor) {
		this.numeroBastidor = numeroBastidor;
	}

	public int getKilometros() {
		return kilometros;
	}
	public void setKilometros(int kilometros) {
		this.kilometros = kilometros;
	}

	public int getAnioFabricacion() {
		return anioFabricacion;
	}
	public void setAnioFabricacion(int anioFabricacion) {
		this.anioFabricacion = anioFabricacion;
	}

	@Override
	public String toString() {
		return "Vehiculo [Marca = " + marca + ", Color = " + color + ", Número de Bastidor = " + numeroBastidor + ", Kilometros = " + kilometros + ", Año de Fabricacion = " + anioFabricacion + "]";
	}
	
}
