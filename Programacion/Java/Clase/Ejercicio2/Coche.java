// package Ejercicio2

enum TipoCoche {MINI, DEPORTIVO, UTILITARIO, FAMILIAR};
enum ModalidadSeguro {A_TERCEROS, A_TODO_RIESGO};

public class Coche {
	String modelo;
	String color;
	boolean pintura;
	int matricula;
	TipoCoche tipo;
	int anio;
	ModalidadSeguro modalidad;

	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}

	public boolean isPintura() {
		return pintura;
	}
	public void setPintura(boolean pintura) {
		this.pintura = pintura;
	}

	public int getMatricula() {
		return matricula;
	}
	public void setMatricula(int matricula) {
		this.matricula = matricula;
	}

	public TipoCoche getTipo() {
		return tipo;
	}
	public void setTipo(TipoCoche tipo) {
		this.tipo = tipo;
	}

	public int getAnio() {
		return anio;
	}
	public void setAnio(int anio) {
		this.anio = anio;
	}

	public ModalidadSeguro getModalidad() {
		return modalidad;
	}
	public void setModalidad(ModalidadSeguro modalidad) {
		this.modalidad = modalidad;
	}

	public Coche(String modelo, String color, boolean pintura, int matricula, TipoCoche tipo, int anio, ModalidadSeguro modalidad) {
		// super();
		this.modelo = modelo;
		this.color = color;
		this.pintura = pintura;
		this.matricula = matricula;
		this.tipo = tipo;
		this.anio = anio;
		this.modalidad = modalidad;
	}

	@Override
	public String toString() {
		return "Coche [Modelo = " + modelo + ", Color = " + color + ", Pintura = " + pintura + ", Matricula = " + matricula + ", Tipo = " + tipo + ", Año = " + anio + ", Modalidad = " + modalidad + "]";
	}
}
