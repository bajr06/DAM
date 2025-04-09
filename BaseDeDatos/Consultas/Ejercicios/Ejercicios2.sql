-- Ejercicio 1
select CodigoOficina, Ciudad from Oficinas; -- Solución correcta.

-- Ejercicio 2
select count(CodigoEmpleado) as Cantidad_Empleados from Empleados; -- Solución medianamente correcta.
select count(*) Numero_Empleados from Empleados; -- Solución correcta. 

-- Ejercicio 3
select Pais, count(CodigoCliente) as Cantidad_Clientes from Clientes group by Pais; -- Solución medianamente correcta.
select Pais, count(CodigoCliente) NumeroCliente from Clientes group by Pais; -- Solución correcta.

-- Ejercicio 4
select avg(Cantidad) Media from Pagos group by FormaPago having Media > 800; -- Solución medianamente correcta.
select avg(Cantidad) as Media_2008 from Pagos where FechaPago like '2008%'; -- Solución correcta.

-- Ejercicio 5
select Estado, count(CodigoPedido) as Cantidad from Pedidos group by Estado order by Cantidad desc; -- Solución medianamente correcta.
select count(CodigoPedido) Numero from Pedidos group by Estado order by Numero asc; -- Solución correcta.

-- Ejercicio 6
select min(PrecioVenta) as Precio_bajo, max(PrecioVenta) as Precio_alto from Productos; -- Solución medianamente correcta.
select MasCaro, MasBarato from (select max(PrecioVenta) MasCaro from Productos) T1, (select min(PrecioVenta) MasBarato from Productos) T2; -- Solución correcta 1.
select * from (select Nombre Caro, PrecioVenta PrecioCaro from Productos inner join (select max(PrecioVenta) MasCaro from Productos) T1 on PrecioVenta = MasCaro) T3, (select Nombre Barato, PrecioVenta PrecioBarato from Productos inner join (select max(PrecioVenta) MasBarato from Productos) T2 on PrecioVenta = MasBarato) T4; -- Solución correcta 2.

-- Ejercicio 7
select Ciudad, Telefono from Oficinas where Pais = 'EEUU'; -- Solución correcta.

-- Ejercicio 8
select Nombre, Apellido1, Apellido2, Email from Empleados where CodigoJefe = (select CodigoEmpleado from Empleados where Nombre = 'Alberto' and Apellido1 = 'Soria'); -- Solución correcta 1
select Nombre, Apellido1, Apellido2, Email from Empleados inner join (select CodigoEmpleado from Empleados where Nombre = 'Alberto' and Apellido1 = 'Soria') T1 on Empleados.CodigoJefe = T1.CodigoEmpleado; -- Solución correcta 2.

-- Ejercicio 9
select Puesto, Nombre, Apellido1, Apellido2, Email from Empleados where Puesto = 'Director General'; -- Solución medianamente correcta.
select Nombre, Apellido1, Apellido2, Email from Empleados where CodigoJefe is NULL; -- Solución Correcta.

-- Ejercicio 10
select Nombre, Apellido1, Apellido2, Puesto from Empleados where Puesto != 'Representante Ventas'; -- Solución medianamente correcta.
select Nombre, Apellido1, Apellido2, Puesto from Empleados where Puesto <> 'Representante Ventas'; -- Solución correcta.

-- Ejercicio 11
select count(CodigoCliente) as Cantidad_Clientes from Clientes; -- Solución medianamente correcta.
select count(CodigoCliente) TotalClientes from Clientes; -- Solución correcta 1.
select count(*) TotalClientes from Clientes; -- Solución correcta 2.

-- Ejercicio 12
select NombreCliente from Clientes where Pais = 'Spain' or Pais = 'España'; -- Solución correcta 1.
select NombreCliente from Clientes where Pais in ('Spain', 'España'); -- Solución correcta 2.

-- Ejercicio 13
select Pais, count(CodigoCliente) as Cantidad_Clientes from Clientes group by Pais; -- Solución medianamente correcta.
select Pais, count(NombreCliente) TotalClientesPais from Clientes group by Pais; -- Solución correcta.

-- Ejercicio 14
select count(CodigoCliente) as Cantidad_Clientes from Clientes where Ciudad = 'Madrid'; -- Solución medianamente correcta.
select Ciudad, count(NombreCliente) TotalClientesPais from Clientes group by Ciudad having Ciudad = 'Madrid'; -- Solución correcta 1.
select count(NombreCliente) TotalClientesCiudad from Clientes where Ciudad = 'Madrid'; -- Solución correcta.

-- Ejercicio 15
select count(CodigoCliente) as Cantidad_Clientes_Ciudad from Clientes where Ciudad like 'M%'; -- Solución correcta.

-- Ejercicio 16
select CodigoEmpleadoRepVentas, count(CodigoCliente) as Representante_Venta from Clientes group by CodigoEmpleadoRepVentas; -- Solución medianamente correcta.
select CodigoEmpleadoRepVentas, NumClientes from (select CodigoEmpleado from Empleados where Puesto = 'Representante Ventas') T1 inner join (select CodigoEmpleadoRepVentas, count(NombreCliente) NumClientes from Clientes group by CodigoEmpleadoRepVenta) T2 on T1.CodigoEmpleado = T2.CodigoEmpleadoRepVentas; --Solución correcta.

-- Ejercicio 17
select count(CodigoCliente) as Cantidad from Clientes where CodigoEmpleadoRepVentas = NULL; -- Solución incorrecta.
select count(NombreCliente) ClienteSinRep from (select CodigoCliente A, NombreCliente B from (select CodigoEmpleado from Empleados where Puesto = 'Representate Ventas') T1 inner join Clientes on Clientes.CodigoEmpleadoRepVentas = T1.CodigoEmpleado) ClienteRep right join Clientes on Clientes on Clientes.CodigoCliente = ClienteRep.A where B is NULL; -- Solución correcta.

-- Ejercicio 18
select min(FechaPago) as Primera_Venta, max(FechaPago) as Ultima_Venta from Pagos; -- Medianamente correcto.
select IDTransaccion from Pagos where FechaPago in ((select min(FechaPago) Primer from Pagos), (select max(FechaPago) Ultimo from Pagos)); -- Medianamente correcta 2.
select * from (select IDTransaccion UltimoPago from Pagos where FechaPago = (select max(FechaPago) from Pagos)) T1,  (select IDTransaccion PrimerPago from Pagos where FechaPago = (select min(FechaPago) from Pagos)) T2; -- Solución Correcta 1.
 select IDTransaccion, FechaPago from Pagos order by FechaPago asc limit 10; -- Solución Correcta 2.

-- Ejercicio 19
select CodigoCliente from Pagos where FechaPago like '2008%'; -- Respuesta medianamente correcta.
select distinct CodigoCliente from Pagos where FechaPago like '2008%'; -- Respuesta correcta.

-- Ejercicio 20
select distinct Estado from Pedidos; -- Solución medianamente correcta.
select count(*) from (select distinct Estado from Pedidos) T; -- Solución correcta 1.
select distinct Estado from Pedidos;

-- Ejercicio 21
select CodigoPedido, CodigoCliente, FechaEsperada, FechaEntrega from Pedidos where FechaEsperada < FechaEntrega; -- Solucicón medianamente correcta.
select CodigoPedido, CodigoCliente, FechaEsperada, FechaEntrega from Pedidos where FechaEntrega > FechaEsperada or FechaEntrega is NULL; -- Solución correcta.

-- Ejercicio 22
select CodigoPedido, sum(Cantidad) TotalProductos from DetallePedidos group by CodigoPedido; -- Solución correcta 1.
select NumeroLinea, sum(Cantidad) TotalProductos from DetallePedidos group by NumeroLinea; -- Solución correcta 2.

-- Ejercicio 23
select CodigoProducto, sum(Cantidad) as TotalCantidad from DetallePedidos group by CodigoProducto order by Total desc limit 20; -- Solución correcta.

-- Ejercicio 24
select CodigoPedido, CodigoCliente, FechaEntrega, FechaEsperada from Pedidos where (FechaEsperada - 2) >= FechaEntrega; -- Solución correcta 1.
select CodigoPedido, CodigoCliente, FechaEsperada, FechaEntrega from Pedidos where datediff(FechaEsperada, FechaEntrega) >= 2; -- Solución correcta.

-- Ejercicio 25
select BaseImponible, IVA, (BaseImponible + IVA) Total from (select sum(Cantidad * PrecioUnidad) BaseImponible, (sum(PrecioUnidad * Cantidad) * 0.21) IVA from DetallePedidos) T; -- Solución correcta 1.
select sum(Cantidad * PrecioUnidad) BaseImponible, (sum(PrecioUnidad * Cantidad) * 0.21) IVA, sum(Cantidad * PrecioUnidad + Cantidad * PrecioUnidad * 0.21) Total from DetallePedidos; -- Solución correcta 2.

-- Ejercicio 26
select Codigo Producto, sum(Cantidad * PrecioUnidad) BaseImponible, (sum(PrecioUnidad * Cantidad) * 0.21) IVA, sum(Cantidad * PrecioUnidad + Cantidad * PrecioUnidad * 0.21) Total from DetallePedidos where CodigoProducto like 'FR%' group by CodigoProducto; -- Solución correcta.
select Codigo Producto, sum(Cantidad * PrecioUnidad) BaseImponible, (sum(PrecioUnidad * Cantidad) * 0.21) IVA, sum(Cantidad * PrecioUnidad + Cantidad * PrecioUnidad * 0.21) Total from     DetallePedidos group by CodigoProducto having CodigoProducto like 'FR%'; -- Solución correcta.

-- Ejercicio 27
select Nombre, PrecioVenta from Producto where PrecioVentas = (select max(PrecioVenta) Maximo from Productos); -- Falta revisar.

-- Ejercicio 28
select Nombre from Productos where inner join (select CodigoProducto from DetallePedidos inner join (select max(Cantidad) Cantidad_Maxima from DetallePedidos) T1 on DetallePedidos.Cantidad = T1.CantidadMaxima) T2 on Productos.CodigoProducto = T2.CodigopProducto; -- Solución correcta.
select CodigoProducto from DetallePedidos where Cantidad = (select max(Cantidad) Cantidad_Maxima from DetallePedidos) T; -- Otra solución válida.

-- Ejercicio 29
select NombreCliente, LimiteCredito, Cantidad_Pagada from Cliente inner join (select CodigoCliente, sum(Cantidad) Cantidadad_pagada from Pagos group by CodigoCliente) T on Cliente.CodigoCliente = T.CodigoCliente where LimiteCredito > CantidadPagada;

-- Ejercicio 30
select Nombre, CantidadEnStock from Productos where CantidadEnStock in ((select max(CantidadEnStock) MayorStock from Productos), (select min(CantidadEnStock) MenorStock from Productos)) order by CantidadEnStock desc;
select Nombre, CantidadEnStock from Productos where CantidadEnStock = (select max(CantidadEnStock) MayorStock from Productos) T1, -- Revisar.

-- Ejercicio 31
select NombreCliente, Nombre, Ciudad from Oficinas inner join (select NombreCliente, Nombre, CodigoOficina from Empleados inner join (select NombreCliente, CodigoEmpleadoRepVentas from Clientes) T1 on Empleados.CodigoEmpleado = T1.CodigoEmpleadoRepVentas) T2 on Oficinas.CodigoOficina = T2.CodigoOficina;

select CodigoCliente, NombreCliente, CodCli from Clientes left join (select CodigoCliente CodCli from Pagos) T1 on Clientes.CodigoCliente = T1.CodCli where CodCli is null;

-- Ejercicio 32
select NombreCliente, Nombre, Ciudad from Oficinas inner join (select NombreCliente, Nombre, CodigoOficina from Empleados inner join (select NombreCliente, CodigoEmpleadoRepVentas from Clientes where CodigoCliente not in (select CodigoCliente CodCli from Pagos)) T1 on Empleados.CodigoEmpleado = T1.CodigoEmpleadoRepVentas) T2 on Oficinas.CodigoEmpleados = T2.CodigoOficina;

-- Ejercicio 33
select Empleados.CodigoEmpleado, Nombre, Apellido1, Apellido2, NombreJefe from Empleados inner join (select CodigoEmpleado, concat(Nombre, " ", Apellido1, " ", Apellido2) NombreJefe from Empleados) Jefe on Empleados.CodigoJefe = Jefe.CodigoEmpleado;

-- Ejercicio 34
select NombreCliente from Clientes inner join (select CodigoCliente from Pedidos where FechaEntrega > FechaEsperada or FechaEntrega is NULL) T1 on Clientes.CodigoCliente = T1.CodigoCliente;

-- Ejercicio 35
select NombreCliente, NumeroPedidos from Cliente inner join (select CodigoCliente, count(CodigoPedido) from Pedidos group by CodigoCliente) T1 on Clientes.CodigoCliente = T1.CodigoCliente;

-- Ejercicio 36
(select NombreCliente, Total from Clientes inner join (select CodigoCliente, sum(Cantidad) Total from Pagos) T1 on Clientes.CodigoCliente = T1.CodigoCliente;) TotalPagos
(select CodigoCliente, sum(TotalPedido) TotalCliente from Pedidos inner join (select CodigoPedido, sum(Cantidad * PrecioUnidad) TotalPedido from DetallePedidos group by CodigoPedido) T1 on Pedidos.CodigoPedido = T1.CodigoPedido group by CodigoCliente order by CodigoCliente) TotalPedido;

-- Ejercicio 37
select NombreCliente from Clientes inner join (select CodigoCliente from Pedidos where year(FechaPedido) = '2008') T1 on Cliente.CodigoCliente = T1.CodigoCliente; -- Solución 1
select NombreCliente from Clientes inner join (select CodigoCliente from Pedidos where FechaPedido like '2008%') T1 on Clientes.CodigoCliente = T1.CodigoCliente; -- Solución 2

-- Ejercicio 38
select NombreCliente, Nombre, Apellido1, Apellido2 from Empleados inner join (select NombreCliente, CodigoEmpleadoRepVentas from Clientes left join (select CodigoCliente as C from Pagos) T1 on Clientes.CodigoCliente = T1.C where C is NULL) T2 on Empleados.CodigoEmpleado = T2.CodigoEmpleadoRepVentas; -- Solucion 1.
select NombreCliente, Nombre, Apellido1, Apellido2 from Empleados inner join (select NombreCliente, CodigoEmpleadoRepVentas from Clientes where CodigoCliente not in (select CodigoCliente as C from Pagos)) T2 on Empleados.CodigoEmpleado = T2.CodigoEmpleadoRepVentas; -- Solución 2.

-- Ejercicio 39
select NombreCliente, Nombre, Apellido1, Ciudad from Oficinas inner join (select NombreCliente, Nombre, Apellido1, CodigoOficina from Empleados inner join (select NombreCliente, CodigoEmpleadoRepVentas from Clientes) T1 on Empleados.CodigoEmpleado = T1.CodigoEmpleadoRepVentas) T2 on  Oficinas.CodigoOficina = T2.CodigoOficina;

-- Ejercicio 40
select Nombre * from Oficinas inner join (select Nombre, Apellido1, Apellido2, CodigoOficina, Puesto from Empleados where Puesto != 'Representante ventas') T1 on Oficinas.CodigoOficina = T1.CodigoOficina;

-- Ejercicio 41
select CodigoOficina, Ciudad, Cantidad_Empleados from Oficinas inner join (select CodigoOficina COF, count(CodigoEmpleado) Cantidad_Empleados from Empleados group by CodigoOficina) T1 on Oficinas.CodigoOficina = T1.COF group by CodigoOficina; -- Solución medianamente correcta.
select CodigoOficina, Ciudad, TotalEmpleados from Oficinas inner join (select CodigoOficina, count(CodigoEmpleado) TotalEmpleados from Empleados group by CodigoOficina) T1 on Oficinas.CodigoOficina = T1.CodigoOficina; -- Solución correcta.

-- Ejercicio 42
select CodigoEmpleado, Nombre, Apellido1, Apellido2, CodJefe, NoJefe, Ap1Jefe, Ap2Jefe from Empleados inner join (select CodigoEmpleado CodJefe, Nombre NoJefe, Apellido1 Ap1Jefe, Apellido2 Ap2Jefe from Empleados) Jefes on Empleados.CodigoJefe = Jefes.CodJefe;

-- Ejercicio 43
select Nombre, Apellido1, Apellido2, Puestom, Ciudad from Oficinas inner join (select Nombre, Apellido1, Apellido2, Puesto, CodigoOficina, C from Empleados left join (select CodigoEmpleadoRepVentas C from Clientes) T1 on Empleados.CodigoEmpleado = T1.C where C is NULL) T2 on Oficinas.CodigoOficina = T2.CodigoOficina; -- Solución Correcta

-- Ejercicio 44
select Gama, avg(CantidadEnStock) Media from Productos group by Gama; -- Solución correcta.

-- Ejercicio 45
select * from Clientes inner join (select Ciudad C from Oficinas) T1 on Clientes.Ciudad = T1.C;

-- Ejercicio 46
select * from Clientes inner join (select Ciudad C from Oficinas) T1 on Clientes.Ciudad = T1.C where C is NULL order by Ciudad;

-- Ejercicio 47
select T1.CodigoEmpleado, count(CodigoEmpleadoRepVentas) TotalClientes from Clientes right join (select CodigoEmpleado C from Empleados where Puesto = "Representante Ventas") T1 on Clientes.CodigoEmpleadoRepVentas = T1.C group by T1.C; -- Solución correcta.

-- Ejercicio 48
select CodigoPedido, sum(Cantidad * PrecioUnidad) TotalPedido from Detalle Pedido group by CodigoPedido;

-- Ejercicio 49
¿?

-- Ejercicio 50
select NombreCliente from Clientes inner join (select CodigoPedido, CodCliente, sum(Cantidad * PrecioUnidad) Total from DetallePedidos inner join (select CodigoPedido C, CodigoCliente from Pedidos where year(FechaPedido) = 2008) T1 on DetallePedidos.CodigoPedido = T1.C group by CodigoPedido having sum(Cantidad * PrecioUnidad) > 2000) T2 on Clientes.CodigoClientes = T2.CodigoCliente; -- Solución Correcta.

-- Ejercicio 51
select CodigoCliente, Estado, count(Estado) Numero from Pedidos group by CodigoCliente, Estado;

-- Ejercicio 52
select CodigoCliente, sum(Cantidad) from Pedidos inner join (select CodigoPedido, Cantidad from DetallePedidos) T1 on Pedidos.CodigoPedido = T1.CodigoPedido group by CodigoCliente having sum(cantidad) > 200;

-- Ejercicio 53
select NombreCliente, LimiteCredito from Clientes order by LimiteCredito desc limit 1; -- Solución medianamente bien.
select NombreCliente from Clientes inner join (select max(LimiteCredito) Limite from Clientes) T1 on Clientes.LimiteCredito = T1.Limite; -- Solución correcta.

-- Ejercicio 54
select Nombre, Apellido1, Puesto, C  from Empleados left join (select CodigoEmpleadoRepVentas C from Clientes) T1 on Empleados; -- Rellenar después

-- Ejercicio 55
select NombreCliente, Nombre, Apellido1 from Clientes inner join (select CodigoEmpleado, Nombre, Apellido1 from Empleados) T1 on Clientes.CodigoEmpleadoRepVentas = T1.CodigoEmpleado;

-- Ejercicio 56
select NombreCliente, Nombre, Apellido1, from Empleados inner join (select NombreCliente, CodigoEmpleadoRepVentas, C from Clientes left join (select CodigoCliente C from Pagos) T1 on Clientes.CodigoCliente = T1.C where C is NULL) T2 on Empleados.CodigoEmpleado = T2.CodigoEmpleadoRepVentas;

-- Ejercicio 57
-- Revisar en casa.

-- Ejercicio 58
-- Revisar en casa.

-- Ejercicio 59
-- Revisar en casa.
