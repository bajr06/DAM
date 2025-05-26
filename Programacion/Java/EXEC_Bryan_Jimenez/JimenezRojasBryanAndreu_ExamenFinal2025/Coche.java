package JimenezRojasBryanAndreu_ExamenFinal2025;

public class Coche extends Vehiculo {
	protected boolean electrico;
	private boolean antiguo;
	
	public Coche(String marca, String color, String numeroBastidor, int kilometros, boolean electrico) {
		super(marca, color, numeroBastidor, kilometros);
		this.electrico = electrico;
	}
	
	public boolean isElectrico() {
		return electrico;
	}
	public void setElectrico(boolean electrico) {
		this.electrico = electrico;
	}

	public boolean isAntiguo() {
		return antiguo;
	}
	public void setAntiguo(boolean antiguo) {
		this.antiguo = antiguo;
	}

	@Override
	public String toString() {
		return super.toString() + " de tipo Coche [Electrico = " + electrico + ", Antiguo = " + antiguo + "]";
	}
}
