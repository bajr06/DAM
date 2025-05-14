enum Turno {MANIANA, TARDE};

public class Directivo {
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
    
	int dni;
	String nombre;
	String apellidos;
	int salario;
	boolean salesiano;
	Turno periodo;
}
