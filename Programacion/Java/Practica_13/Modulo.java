public class Modulo {
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getNumeroHoras() {
		return numeroHoras;
	}
	public void setNumeroHoras(int numeroHoras) {
		this.numeroHoras = numeroHoras;
	}

	public boolean isConvalidacion() {
		return convalidacion;
	}
	public void setConvalidacion(boolean convalidacion) {
		this.convalidacion = convalidacion;
	}
	
	public Modulo(String nombre, int numeroHoras, Profesor docente, boolean convalidacion) {
		this.nombre = nombre;
		this.numeroHoras = numeroHoras;
		this.docente = docente;
		this.convalidacion = convalidacion;
	}

	@Override
	public String toString() {
		return "Modulo [Nombre = " + nombre + ", Numero de Horas = " + numeroHoras + ", Docente = " + docente + ", Convalidacion = " + convalidacion + "]";
	}


	private String nombre;
	private int numeroHoras;
	private Profesor docente;
	private boolean convalidacion;
}
