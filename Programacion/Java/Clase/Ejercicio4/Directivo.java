enum Turno {MANIANA, TARDE};

public class Directivo extends PersonaInstituto {
	public boolean isSalesiano() {
		return salesiano;
	}
	public void setSalesiano(boolean salesiano) {
		this.salesiano = salesiano;
	}

	public Turno getPeriodo() {
		return periodo;
	}
	public void setPeriodo(Turno periodo) {
		this.periodo = periodo;
	}

	public Directivo(int dni, String nombre, String apellidos, int salario, boolean salesiano, Turno periodo) {
		super(dni, nombre, apellidos, salario);
		this.salesiano = salesiano;
		this.periodo = periodo;
	}

	@Override
	public String toString() {
		return super.toString() + "; Directivo [Salesiano = " + salesiano + ", Periodo = " + periodo + "]";
	}

	boolean salesiano;
	Turno periodo;
}
