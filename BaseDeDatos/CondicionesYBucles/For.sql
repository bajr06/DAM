-- Ejemplo 1
delimiter $$
create procedure EjemploBucle()
begin
	declare i int default 0;
	
	bucle:loop
		if i > 3 then
			leave bucle;
		end if;

		select i;
		set i = i + 1;
	end loop;

	declare j int default 0;
	while i < 3
		select i;
		set i = i + 1;
	end while;
end$$
delimiter ;

-- Llamada
call NuevoDetallesPedido2(129, 'OR-129', 3);
