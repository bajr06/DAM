-- Variable global
set @Numero = 0;
set @Suma = 0;

-- Ejemplo 1
delimiter $$
create procedure ClientePorLetra(in Apellido1 char(100))
begin
	select * from Clientes where Apellido = Apellido1;
end$$
delimiter ;

-- Ejemplo 2
delimiter $$
create procedure NumeroClientes(in Apellido1 char (100), out Numero int)
begin
	select count(*) from Clientes where Apellido = Apellido1;
end$$
delimiter ;

-- Ejemplo 3
delimiter $$
create procedure Sumar(in Numero1 int, in Numero2 int, out Suma int)
begin
	set Suma = Numero1 + Numero2;
end$$
delimiter ;

-- Ejemplo 4
delimiter $$
create procedure NumeroClientes2(in Apellido1 char (100))
begin
	declare Numero int;
	select count(*) into Numero from Clientes where Apellido = Apellido1;
	select Numero;
end$$
delimiter ;

-- Probar procedimiento
call ClientePorLetra("García");

call NumeroClientes("García", @Numero);

call Sumar(2, 4, @Suma);
select Suma;

call NumeroClientes2("García");
