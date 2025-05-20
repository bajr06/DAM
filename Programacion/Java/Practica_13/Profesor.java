public class Profesor extends PersonaInstituto {
	public int getNumeroAsignaturas() {
		return numeroAsignaturas;
	}
	public void setNumeroAsignaturas(int numeroAsignaturas) {
		this.numeroAsignaturas = numeroAsignaturas;
	}

	public boolean isTutor() {
		return tutor;
	}
	public void setTutor(boolean tutor) {
		this.tutor = tutor;
	}
    
	public Profesor(int dni, String nombre, String apellidos, int salario, int numeroAsignaturas, boolean tutor) {
		super(dni, nombre, apellidos, salario);
		this.numeroAsignaturas = numeroAsignaturas;
		this.tutor = tutor;
	}

	@Override
	public String toString() {
		return super.toString() + "; Profesor [Numero de Asignaturas=" + numeroAsignaturas + ", Tutor = " + tutor + "]";
	}

	private int numeroAsignaturas;
	private boolean tutor;
}
