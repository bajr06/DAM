delimiter $$
create function Jugador(CodigoJugador int)
returns int deterministic
begin
	declare esta int;
	set esta = 0;
	set esta = (select Codigo from Jugadores where Codigo = 3 and Posicion like '%C%');

	return esta;
end$$
delimiter ;
