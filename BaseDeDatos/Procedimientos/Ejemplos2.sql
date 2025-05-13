delimiter $$
create function NumeroClientes3(int Apellido1 char(100))
returns int unsigned deterministic
begin
	declare Numero int unsigned;
	set Numero = (select count(*) from Clientes where Apellido = Apellido1);
	return Numero;
end$$
delimiter ;
