-- Función agregada: Aquellas que se aplican para toda la tabla
select count(*) as Total from venta; -- Cuentas las filas de la tabla

select Cliente_n_cliente, count(Cliente_n_cliente) as Total_Compras from venta group by Cliente_n_cliente; -- Cantidad de compras que ha hecho cada uno de los clientes.

select Cliente_n_cliente, sum(cantidad) as Total_Cantidad from venta group by Cliente_n_cliente; -- La cantidad de objetos comprados en cada compra por un cliente.

select min(cantidad) as Compra_minima from venta;