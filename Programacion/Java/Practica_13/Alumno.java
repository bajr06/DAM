import java.util.Arrays;

enum Sexo {MASCULINO, FEMENINO};

public class Alumno extends PersonaInstituto {
	public int getFechaNacimiento() {
		return fechaNacimiento;
	}
	public void setFechaNacimiento(int fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	public Sexo getGenero() {
		return genero;
	}
	public void setGenero(Sexo genero) {
		this.genero = genero;
	}
	
	public boolean isRepetidor() {
		return repetidor;
	}
	public void setRepetidor(boolean repetidor) {
		this.repetidor = repetidor;
	}

	public Modulo[] getModulos() {
		return modulos;
	}
	public void setModulos(Modulo[] modulos) {
		this.modulos = modulos;
	}

	public Alumno(int dni, String nombre, String apellidos, int fechaNacimiento, Sexo genero, boolean repetidor, Modulo [] modulos) {
		super(dni, nombre, apellidos, 0);
		this.fechaNacimiento = fechaNacimiento;
		this.genero = genero;
		this.repetidor = repetidor;
		this.modulos = modulos;
	}

	@Override
	public String toString() {
		return super.toString() + "; Alumno [FechaNacimiento = " + fechaNacimiento + ", Genero = " + genero + ", Repetidor = " + repetidor + ", Modulos = " + Arrays.toString(modulos) + "]";
	}

	private int fechaNacimiento;
	private Sexo genero;
	private boolean repetidor;
	private Modulo[] modulos;
}
