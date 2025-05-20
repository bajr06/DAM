-- Ejercicio 1
delimiter $$
create function PrecioProducto(IDProducto int)
returns int deterministic
begin
	declare Coste int;
	set Coste = (select Precio from Productos where Id_Producto = IDProducto);
	return Coste;
end$$
delimiter ;

-- Ejercicio 2
delimiter $$
create procedure ClientesA()
begin
	select count(Nombre) as Cantidad_Clientes from Clientes where Nombre like "A%";
end$$
delimiter ;

-- Ejercicio 3
delimiter $$
create procedure ProductosEmpleados()
begin
	select Nombre as NombreProducto, NombreEmpleado from Productos inner join (select Id_Producto, NombreEmpleado from Secciones inner join (select Id_Empleado, Nombre as NombreEmpleado from Empleados) T1 on Secciones.Id_Empleado = T1.Id_Empleado) T2 on Productos.Id_Producto = T2.Id_Producto;
end$$
delimiter ;

-- Ejercicio 4
delimiter $$
create procedure AumentoStock(in IDProducto int)
begin
	declare Aumento int;
	declare Total int;
	
	set Aumento = (select Stock from Productos where Id_Producto = IDProducto) * 0.10;
	set Total = (select Stock from Productos where Id_Producto = IDProducto) + Aumento;
	update Productos set Stock = Total where Id_Producto = IDProducto;
end$$
delimiter ;

-- Ejercicio 5
delimiter $$
create procedure NuevoEmpleado(in NombreEmpleado varchar(100), in PuestoEmpleado varchar(50))
begin
	declare IDEmpleado int;
	set IDEmpleado = (select count(Id_Empleado) from Empleados) + 1;
	
	insert into Empleados(Id_Empleado, Nombre, Puesto, Salario, Fecha_Ingreso) values (IDEmpleado, NombreEmpleado, PuestoEmpleado, floor(rand() * 3000) , curdate());
end$$
delimiter ;

-- Ejercicio 6
delimiter $$
create procedure ActualizarEncargado(in IDEmpleado int)
begin
	declare Paga int;
	set Paga = (select Salario from Empleados where Id_Empleado = IDEmpleado);
	
	if Paga > 1500 then
		update Empleados set Puesto = "Encargado" where Id_Empleado = IDEmpleado;
	end if;
end$$
delimiter ;


-- Llamadas
-- Ejercicio 1
select PrecioProducto(12);

-- Ejercicio 2
call ClientesA();

-- Ejercicio 3
call ProductosEmpleados();

-- Ejercicio 4
call AumentoStock(1);

-- Ejercicio 5
call NuevoEmpleado("Bryan", "Cajero");

-- Ejercicio 6
call ActualizarEncargado(105);
