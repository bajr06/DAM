package Practica_12;

public class AparatoElectrico {
	public String getAparato() {
		return aparato;
	}
	public void setAparato(String aparato) {
		this.aparato = aparato;
	}

	public boolean isEstado() {
		return estado;
	}
	public void setEstado(boolean estado) {
		this.estado = estado;
	}

	public int getCosumo() {
		return consumo;
	}
	public void setConsumo(int consumo) {
		this.consumo = consumo;
	}

	static int getconsumoTotal() {
		return consumoTotal;
	}

	public void encender() {
		if(!estado) {
			estado = true;
			consumoTotal += consumo;
		}
	}

	public void apagar() {
		if(estado) {
			estado = false;
			consumoTotal -= consumo;
		}
	}

	public AparatoElectrico(String aparato, int consumo) {
		this.aparato = aparato;
		this.estado = false;
		this.consumo = consumo;
	}

	@Override
	public String toString() {
		return "Aparato Eléctrico [Aparato = " + aparato + ", Estado = " + estado + ", Consumo = " + consumo + "W]";
	}


	String aparato;
	boolean estado;
	int consumo;
	static int consumoTotal = 0;
}
