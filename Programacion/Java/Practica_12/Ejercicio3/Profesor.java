public class Profesor {
	public int getDni() {
		return dni;
	}
	public void setDni(int dni) {
		this.dni = dni;
	}

	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public int getSalario() {
		return salario;
	}
	public void setSalario(int salario) {
		this.salario = salario;
	}

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
    
	int dni;
	String nombre;
	String apellidos;
	int salario;
	int numeroAsignaturas;
	boolean tutor;
}
