-- Ejemplo 1
delimiter $$
create procedure NuevoDetallesPedido2(in NumeroPedido int, in Id_Producto varchar(15), in CantidadProducto int)
begin
	declare Precio decimal(15,2);
	set Precio = (select PrecioVenta from Productos where CodigoProducto = Id_Producto);

	if Precio > 100 then
		insert into DetallePedidos values(NumeroPedido, Id_Producto, CantidadProducto, (Precio - 10), floor(1 + rand() * (8 - 1)));
	else
		insert into DetallePedidos values(NumeroPedido, Id_Producto, CantidadProducto, Precio, floor(1 + rand() * (8 - 1)));
	end if;
end$$
delimiter ;

-- Llamada
call NuevoDetallesPedido2(129, 'OR-129', 3);
