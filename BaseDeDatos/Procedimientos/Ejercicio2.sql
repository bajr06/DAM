-- Ejercicio 1; Opcion 1
delimiter $$
create procedure VerUbicacion(in CiudadOficina varchar(30), out PaisOficina varchar(30), out NumeroEmpleados int)
begin	
	set PaisOficina = (select Pais from Oficinas where Ciudad = CiudadOficina);
	set NumeroEmpleados = (select count(*) as CantidadEmpleados from Oficinas inner join Empleados on Oficinas.CodigoOficina = Empleados.CodigoOficina where Ciudad = CiudadOficina group by Pais);
end$$
delimiter ;

-- Ejercicio 1; Opcion 2
delimiter $$
create procedure VerUbicacion2(in City varchar(30))
begin
	select Pais, count(Numero_Empleados) from (select Pais, Numero_Empleados, Ciudad from Oficinas inner join (select count(CodigoEmpleado) as Numero_Empleados, CodigoOficina from Empleados group by CodigoOficina) T1 on Oficinas.CodigoOficina = T1.CodigoOficina where Ciudad = City) T2 group by Pais;
end$$
delimiter ;


-- Ejercicio 2
delimiter $$
create procedure InsertarClientePedido(in NombreCliente varchar(30), in NombreContactoCliente varchar(30), in ApellidoContactoCliente varchar(30), in Telefono varchar(15), in Fax varchar(15), in LineaDireccion1Cliente varchar(50), in CiudadCliente varchar(50), in PaisCliente varchar(50), in CodigoPostal varchar(10))
begin
	declare Codigo int;
	declare NumeroEmpleados int;
	declare CodPedido int;

	set Codigo = (select max(CodigoCliente) from Clientes) + 1;
	set NumeroEmpleados = (select max(CodigoEmpleado) from Empleados);
	set CodPedido = (select max(CodigoPedido) from Pedidos) + 1;

	insert into Clientes values (Codigo, NombreCliente, NombreContactoCliente, ApellidoContactoCliente, Telefono, Fax, LineaDireccion1Cliente, NULL, CiudadCliente, PaisCliente, CodigoPostal, floor(rand() * NumeroEmpleados), 1000.01);

	insert into Pedidos values (CodPedido, curdate(), date_add(curdate(), interval 2 day), NULL, 'Pendiente', Codigo);
end$$
delimiter ;


-- Llamadas

-- Ejercicio 1
-- Opcion 1
set @Pais = "";
set @Numero = 0;

call VerUbicacion("Madrid", @Pais, @Numero);

select @Pais;
select @Numero;

-- Opcion 2
call VerUbicacion2("Paris");


-- Ejercicio 2 - Revisar
call InsertarClientePedido('A', 'Perico', 'Perez', '123456789', '123456789', "Calle Santo Domingo Savio, 2", "Madrid", "España", '28017');
