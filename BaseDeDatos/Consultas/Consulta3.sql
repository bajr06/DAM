-- Juntar tablas
select * from Cliente, Venta; -- Producto Cartesiano.

select * from Cliente, Venta where Cliente.n_Cliente = Venta.Cliente_n_Cliente; -- Seleccion Natural.
/*Inner Join, Left Join, Right Join, Full Outer Join*/

select * from Cliente inner join Venta on Cliente.n_Cliente = Venta.Cliente_n_Cliente; -- Selección Natural usando Inner Join

-- Left Join Toma la tabla Cliente y ve si los valores que hay corresponden con la tabla venta.
select * from Cliente left join Venta on Cliente.n_Cliente = Venta.Cliente_n_Cliente;

select * from Cliente right join Venta on Cliente.n_Cliente = Venta.Cliente_n_Cliente;

-- select * from Cliente full outer join Venta on Cliente.n_Cliente = Venta.Cliente_n_Cliente;