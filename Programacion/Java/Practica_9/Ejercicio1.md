# EJERCICIOS 20\_03\_25

- DECLARACIONES SEÑALA LAS CORRECTAS
1.  a\) int base = 4; altura = 6;       <!-- No -->
    
	b\) char letra-1, letra-2;          <!-- No -->
    
	c\) boolean realizado = “false;”    <!-- No -->
    
	**d\) boolean realizado = true;**   <!-- Si -->
    
	e\) int num = 10.5;                 <!-- No -->
    
	**f\) int 2partes = 5;**            <!-- No -->
    
	<br>
    
    
2.  **a\) int area = 4, perimetro;**    <!-- Si -->
    
	**b\) char letra\_1, letra\_2;**    <!-- Si -->
    
	c\) boolean realizado = FALSE;      <!-- No -->
    
	d\) boolean realizado = true        <!-- No -->
    
	**e\) float f2 = 10.5;**            <!-- No -->
    
	f\) double d2 = 10.002D;            <!-- Si -->
    
	g\) byte num = 128;                 <!-- No -->
    
	<br>
    
3.  **int a2 = 5;**     <!-- Si -->
    
	int 2a = 10;        <!-- No -->
    
	int nombre-2 = 20;  <!-- No -->
    
	<br><br>
    
- INDICA LA SALIDA DE CADA SYSTEM:
	
	int resultado = 20;
    
	System.out.print("El resultado es"+resultado);
    
	System.out.println("El resultado es "+resultado+5);
    
	System.out.println("El resultado es "+(resultado+5));  
    
	System.out.println(resultado+5);
    
    ```text
    El resultado es 20.     <!-- Si -->
    El resultado es 205.    <!-- Si -->
    El resultado es 25.     <!-- Si -->
    25                      <!-- Si -->
    ```
    
    <br>

INDICA QUE VALOR TENDRÍAN LAS VARIABLES:
1.  boolean seguir = 3 > 5;
    ```text
    false o 0.  <!-- Si -->
    ```
  
	boolean parar = 7 != 6;
    ```text
    true o 1.   <!-- Si -->
    ```

2.  int cantidad = 10;
    
	int precio = 50;
	    
	float num = 2.5f;
    
	float num2 = 10f;
    
	String s1 = "El total es "+(cantidad+precio); 
    
	String s2 = "El total es "+cantidad\*precio; 
    
	String s3 = "El total es "+cantidad+precio;  
    
	String s4 = cantidad+precio;  
    
	String s5 = cantidad\*precio;  
    
	String s6 = (cantidad+precio);  
    
	String s7 = ""+cantidad+precio;  
    
	String s8 = ""+(cantidad+precio);  
    
	String s9 = "El total es "+(cantidad+num);  
    
	String s10 = "El total es "+(cantidad/3);  
    
	String s11 = "El total es "+(num2/3);  
    
	String s12 = "El total es "+(cantidad/3f);  
    
	String s13 = "El total es "+(cantidad/3d);
    
    ```text
    El total es 60      <!-- Si -->
    El total es 500     <!-- Si -->
    El total el 1050    <!-- Si -->
    60                  <!-- No -->
    500                 <!-- No -->
    60                  <!-- No -->
    1050                <!-- Si -->
    60                  <!-- Si -->
    El total es 12.5    <!-- Si -->
    El total es 3       <!-- Si -->
    El total es 3.33    <!-- Si -->
    El total es 3.33    <!-- Si -->
    El total es 3       <!-- No -->
    ```
