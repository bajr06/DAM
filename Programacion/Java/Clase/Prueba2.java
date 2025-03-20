public class Prueba2{
	public static void main(String[] args){
		int notas[] = {4, 5, 7, 8, 1};
		int s = 0;
		boolean suspensos = false;

		System.out.println("Introduzca nota (de 0 o 10): ");
		for(int i = 0; i < 5; i++){
			System.out.println(notas[i]);

			if(notas[i] < 5){
				suspensos = true;
				s++;
			}
		}

		if(suspensos){
			System.out.println("Hay alumos suspensos " + s);
		} else{
			System.out.println("No hay suspensos");
		}
	}
}
