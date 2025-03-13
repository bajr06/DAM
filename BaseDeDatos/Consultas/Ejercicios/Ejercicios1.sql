-- Pregunta 1
select distinct Poblacion from Cliente; -- Solución medianamente buena.
select count(Poblacion) from (select distinct Poblacion from Cliente) as T1; -- Solución correcta.

-- Pregunta 2
select * from Cliente where Poblacion = 'Madrid'; -- Solución medianamente buena.
select Nombre, Direccion, Telefono from Cliente where Poblacion = 'Madrid'; -- Solución Correcta.

-- Pregunta 3
select Nombre from Cliente where Poblacion = 'Madrid' or Poblacion = 'Barcelona'; -- Solución 1.
select nombre from Cliente where Poblacion in ('Madrid', 'Barcelona'); -- Solución 2.

-- Pregunta 4
select Nombre, Telefono from Cliente where Poblacion = 'Madrid' or Direccion = 'Calle Amarilla'; -- Solucion incorrecta.
select Nombre, Telefono from Cliente where Poblacion = 'Madrid' and Direccion like 'Calle Amarilla'; -- Solución correcta.

-- Pregunta 5
select distinct Nombre from Cliente where nombre like 'M%'; -- Solución correcta.

-- Pregunta 6
select distinct Nombre from Cliente where Nombre like 'M%' and Nombre like '%S'; -- Solución medianamente correcta.
select distinct Nombre from Cliente where Nombre like 'M%S'; -- Solución correcta.

-- Pregunta 7
select Nombre from Producto where Precio between 1500 and 2000; -- Solución mendianamente correcta.
select distinct Nombre from Producto where Precio between 1500 and 2000; -- Solución correcta.

-- Pregunta 8
select Nombre from Producto group by Nombre; -- Incorrecto.
select distinct Nombre from Producto; -- Correcta.

-- Pregunta 9
select distinct Nombre from Producto where Nombre like '_a%'; -- Correcta.

-- Pregunta 10
select distinct Nombre, Precio from Producto where Precio like '4%1_'; -- Correcta.

-- Pregunta 11
select Id_Venta, sum(Cantidad) as Numero_Productos from Venta group by Id_Venta; -- Correcta.

-- Pregunta 12
select sum(Precio) as Total from Producto; -- Correcta.

-- Prueba
select Id_Venta, sum(Total) as Total_Venta from (select Id_Venta, Producto_Cod_Producto, (Cantidad * Precio) as Total from (select Producto_Cod_Producto, Cantidad, ID_Venta, Precio from Venta inner join Producto on Venta.Producto_Cod_Producto = Producto.Producto_Cod_Producto) as T1) as T2 group by Id_Venta; -- Correcta.

-- Pregunta 13
select Cliente_N_Cliente, Cantidad from Venta where cantidad between 20 and 30; -- Incorrecto.
select Cliente_N_Cliente, sum(Cantidad) as Total from Venta group by Cliente_n_Cliente having Total between 20 and 30; -- Correcto.

-- Pregunta 14
select count(Cliente_N_Cliente) from (select Cliente_N_Cliente, sum(Cantidad) as Total from Venta group by Cliente_n_Cliente having Total between 10 and 20) as T1 where Total between 10 and 20; -- Correcto

-- Pregunta 15
select count(Nombre) as Total from Cliente where Nombre = 'Marcos'; -- Correcto.

-- Preguna 16
select count(Nombre) as Total from Cliente where Nombre = 'Marcos' and Direccion = 'Calle Amariillo'; -- Correcto.

-- Pregunta 17
select max(Cantidad) as Maximo from Venta; -- Correcto.

-- Pregunta 18
select Nombre, count(Nombre) as Cantidad from Cliente group by Nombre; -- Correcto.

-- Pregunta 19
select * from Cliente, Venta;

-- Pregunta 20
select N_Cliente, Direccion, Telefono, Poblacion, Producto, Producto_Cod_Producto from Cliente inner join Venta on Cliente.N_Cliente = Venta.Cliente_N_Cliente;
-- Buscar en los apuntes
