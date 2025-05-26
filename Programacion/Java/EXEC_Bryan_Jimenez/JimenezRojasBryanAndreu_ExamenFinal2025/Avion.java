package JimenezRojasBryanAndreu_ExamenFinal2025;

public class Avion extends Vehiculo {
	byte motores;
	double velocidadMax;
	boolean combate;
	
	public Avion(String marca, String color, String numeroBastidor, int kilometros, byte motores, double velocidad, boolean combate) {
		super(marca, color, numeroBastidor, kilometros);
		this.motores = motores;
		this.velocidadMax = velocidad;
		this.combate = combate;
	}

	
	public Avion(String marca, String color, String numeroBastidor, int kilometros, boolean combate) {
		super(marca, color, numeroBastidor, kilometros);
		this.combate = combate;
	}


	public byte getMotores() {
		return motores;
	}
	public void setMotores(byte motores) {
		this.motores = motores;
	}

	public double getVelocidad() {
		return velocidadMax;
	}
	public void setVelocidad(double velocidad) {
		this.velocidadMax = velocidad;
	}

	public boolean isCombate() {
		return combate;
	}

	@Override
	public String toString() {
		return  super.toString() + " de tipo Avion [Motores = " + motores + ", Velocidad = " + velocidadMax + ", Combate = " + combate + "]";
	}
	
	
}
