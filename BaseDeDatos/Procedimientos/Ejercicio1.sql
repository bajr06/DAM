-- Ejercicio 1
delimiter $$
create procedure InsertarEmpleado(in Nombre varchar(50), in Ap1 varchar(50), in Ap2 varchar(50), in Ext varchar(10), in Correo varchar(100), in Co varchar(10), in CJ int, in Cargo varchar(50))
begin
	declare Codigo int;

	set Codigo = (select count(*) from Empleados) + 1;
	
	insert into Empleados values(Codigo, Nombre, Ap1, Ap2, Ext, Correo, Co, CJ, Cargo);
end$$
delimiter ;

-- Ejercicio 2
delimiter $$
create procedure CambiarJefe(in CodEmpl int, in NueCodJefe int)
begin
	update Empleados set CodigoJefe = NuCodJefe where CodigoEmpleado = CodEmpl;
end$$
delimiter ;

-- Ejercicio 3
delimiter $$
create procedure NombreEmpleadoYJefe(in CiudadEmpleadoYJefe varchar(30))
begin
	select Nombre as NombreJefe, NombreEmpleado from Empleados inner join (select Nombre as NombreEmpleado, CodigoJefe from Empleados inner join (select CodigoOficina from Oficinas where Ciudad = CiudadEmpleadoYJefe) T1 on Empleados.CodigoOficina = T1.CodigoOficina) T2 on Empleados.CodigoEmpleado = T2.CodigoJefe;
end$$
delimiter ;

-- Ejercicio 4
delimiter $$
create procedure PedidosNoCancelados(in NombCliente varchar(50))
begin
	select CodigoPedido, Estado from Pedidos inner join (select CodigoCliente from Clientes where NombreCliente = NombCliente) T1 on Pedidos.CodigoCliente = T1.CodigoCliente where Estado != "Rechazado";
end$$
delimiter ;

-- Ejercicio 5
delimiter $$
create procedure PrecioProducto(in NombreProducto varchar(70))
begin
	select Nombre, PrecioVenta, PrecioProveedor from Productos where Nombre = NombreProducto;
end$$
delimiter ;

-- Ejercicio 6
/*
delimiter $$
create procedure NuevoPedido(in Producto varchar(70), in CantidadProducto int)
begin
	declare Codigo int;
	declare Codigo2 varchar(15);
	
	set Codigo = (select count(*) from DetallePedidos) + 1;
	set Codigo2 = (select CodigoProducto from Productos where Nombre = Producto limit 1);

	insert into DetallePedidos values(Codigo, Codigo2, CantidadProducto, NULL, NULL);
end$$
delimiter ;
*/

delimiter $$
create procedure NuevoPedido(in Id_Cliente int, Id_Producto varchar(15))
begin
	declare Codigo1 int;


	set Codigo = (select count(*) from Pedidos) + 1;
end$$
delimiter ;
-- Ejercicio 7


-- Ejercicio 8



-- Llamadas
call NuevoEmpleado("Bryan", "Jiménez", "Rojas", 3500, "bryanandreujimenezrojas@gmail.com", "ECU-ES", 1, "Programador");

call CambiarJefe(50, 8);

call NombreEmpleadoYJefe("Madrid");

call PedidosNoCancelados2("FLORES S.L.");
