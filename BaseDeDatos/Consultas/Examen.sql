-- Examen de SQL 2025

-- Ejercicio 1
select Nombre as NombreCliente, Apellido as ApellidoCliente
from Clientes
where Telefono like '%23';

-- Ejercicio 2
select Nombre as NombreEmpleado, Puesto
from Empleados
inner join
	(select Id_Empleado
	from Ventas
	where Fecha_Venta is NULL) T1
on Empleados.Id_Empleado = T1.Id_Empleado;

-- Ejercicio 3
select Nombre as NombreEmpleado, TotalRecaudado
from Empleados
inner join
	(select Id_Empleado, sum(Precio_Total) as TotalRecaudado
	from Ventas
	group by Id_Empleado) T1
on Empleados.Id_Empleado = T1.Id_Empleado;

-- Ejercicio 4
select Nombre as NombreProducto
from Productos
left join 
	(select Id_Producto, Cantidad
	from Ventas) T1
on Productos.Id_Producto = T1.Id_Producto
where Stock > Cantidad;

-- Ejercicio 5
select Nombre as NombreCliente, NombreEmpleado
from Clientes
inner join
	(select Id_Cliente, NombreEmpleado
	from Ventas
	inner join
		(select Id_Empleado, Nombre as NombreEmpleado
		from Empleados
		where Puesto = 'Reponedor' or Puesto = 'Reponedora') T1
	on Ventas.Id_Empleado = T1.Id_Empleado) T2
on Clientes.Id_Cliente = T2.Id_Cliente;

-- Ejercicio 6
select Nombre as NombreEmpleado, Puesto
from Empleados
inner join
	(select Id_Empleado, min(Cantidad) as CantidadMinima
	from Ventas
	group by Id_Empleado limit 1) T1
on Empleados.Id_Empleado = T1.Id_Empleado;

-- Ejercicio 7
select Nombre as NombreProducto, Stock
from Productos
inner join
	(select Id_Producto
	from Ventas
	inner join
		(select Id_Cliente
		from Clientes
		where Direccion like '%Madrid') T1
	on Ventas.Id_Cliente = T1.Id_Cliente) T2
on Productos.Id_Producto = T2.Id_Producto
where Stock > 200;

-- Ejercicio 8
select Id_Producto, Nombre as NombreProducto, CantidadColocada
from Productos
inner join
	(select Id_Producto as IdentificadorProducto, Cantidad as CantidadColocada
	from Ventas
	inner join
		(select Id_Empleado
		from Empleados
		where Nombre = 'Ricardo Torres') T1
	on Ventas.Id_Empleado = T1.Id_Empleado) T2
on Productos.Id_Producto = T2.IdentificadorProducto;

-- Ejercicio 9
select Nombre as NombreProducto
from Productos
inner join
	(select Id_Producto, Cantidad, (Precio_Total/Cantidad) as PrecioVendido
	from Ventas) T1
on Productos.Id_Producto = T1.Id_Producto
where (Precio * Cantidad) < PrecioVendido;

-- Ejercicio 10
select Nombre as NombreCliente, Apellido as ApellidoCliente
from Clientes
inner join
	(select Id_Cliente
	from Ventas
	inner join
		(select Id_Producto
		from Productos
		inner join
			(select Id_Producto as IdentificadorProducto
			from Secciones
			inner join
				(select Id_Empleado
				from Empleados
				where Salario > 1400) T1
			on Secciones.Id_Empleado = T1.Id_Empleado) T2
		on Productos.Id_Producto = T2.IdentificadorProducto) T3
	on Ventas.Id_Producto = T3.Id_Producto) T4
on Clientes.Id_Cliente = T4.Id_Cliente;
