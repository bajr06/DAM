public class Prueba1{
	public static void main(String[] args) {
		String fragmento_nombre_alumnos = "Victor";
		String[] nombre_alumnos = {"Antonio", "Marta", "Victor Hugo", "David"};

		int resultado = contar_usuarios(fragmento_nombre_alumnos, nombre_alumnos);
		System.out.println("Total resultado: " + resultado);
	}
	
	static int contar_usuarios(String fragmento_nombre_alumnos, String[] nombre_alumnos) {
		boolean encontrado = false;
		int total_encontrados =  0;
		
		for(String nombre_alumno_actual : nombre_alumnos){
			if(nombre_alumno_actual.contains(fragmento_nombre_alumnos)){
				encontrado = true;
			}

			if(encontrado){
				total_encontrados++;
			}

			encontrado = false;
		}
		
		return total_encontrados;
	}
}
