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


-- Ejercicio 4


-- Ejercicio 5


-- Ejercicio 6


-- Ejercicio 7


-- Ejercicio 8



-- Llamadas
call NuevoEmpleado("Bryan", "Jiménez", "Rojas", 3500, "bryanandreujimenezrojas@gmail.com", "ECU-ES", 1, "Programador");

call CambiarJefe(50, 8);
