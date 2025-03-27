-- Ejercicio 1
select CodigoOficina, Ciudad from Oficinas; -- Solución correcta.

-- Ejercicio 2
select count(CodigoEmpleado) as Cantidad_Empleados from Empleados; -- Solución medianamente correcta.
select count(*) Numero_Empleados from Empleados; -- Solución correcta. 

-- Ejercicio 3
select Pais, count(CodigoCliente) as Cantidad_Clientes from Clientes group by Pais; -- Solución correcta. 

-- Ejercicio 4
select avg(Cantidad) as Media_2008 from Pagos where FechaPago like '2008%'; -- Solución correcta.
select avg(Cantidad) Media from Pagos group by FormaPago having Media > 800; -- Otra solución.

-- Ejercicio 5
select Estado, count(CodigoPedido) as Cantidad from Pedidos group by Estado order by Cantidad desc; -- Solución medianamente correcta.
select count(CodigoPedido) Numero from Pedidos group by Estado order by Numero asc; -- Solución correcta.

-- Ejercicio 6
select min(PrecioVenta) as Precio_bajo, max(PrecioVenta) as Precio_alto from Productos; -- Solución medianamente correcta.
select Nombre from Productos where PrecioVentas = (select max(PrecioVenta) Mas_Caro from Productos) T1, (select min(PrecioVenta) MasBarato from Productos) T2; -- Otra solución más o menos correcta.
select * from (select Nombre, PrecioVenta from Productos inner join (select max(PrecioVenta) MasCaro from Productos) T1 on PrecioVenta = MasCaro) T3, (select Nombre, PrecioVenta from Productos inner join (select max(PrecioVenta) MasVenta from Productos) T1 on PrecioVenta = MasBarato) T4; -- Solución correcta.

-- Ejercicio 7
select Ciudad, Telefono from Oficinas where Pais = 'EEUU'; -- Solución correcta.

-- Ejercicio 8
select Nombre, Apellido1, Apellido2, Email from Empleados where CodigoJefe = (select CodigoEmpleado from Empleados where Nombre = 'Alberto' and Apellido1 = 'Soria'); -- Solución correcta 1
select Nombre, Apellido1, Apellido2, Email from Empleados where inner join (select CodigoEmpleado from Empleados where Nombre = 'Alberto' and Apellido1 = 'Soria') T1 on Empleados.CodigoJefe = T1.CodigoEmpleado; -- Solución más correcta.

-- Ejercicio 9
select Puesto, Nombre, Apellido1, Apellido2, Email from Empleados where Puesto = 'Director General'; -- Solución medianamente correcta.
select Nombre, Apellido1, Apeliidos from Empleados where CodigoJefe is null; -- Solución Correcta.

-- Ejercicio 10
select Nombre, Apellido1, Apellido2, Puesto from Empleados where Puesto != 'Representante Ventas'; -- Solución correcta.

-- Ejercicio 11
select count(CodigoCliente) as Cantidad_Clientes from Clientes; -- Solución medianamente correcta.
select count (*) TotalClientes from Clientes; -- Solución correcta.

-- Ejercicio 12
select NombreCliente from Clientes where Pais = 'España' or Pais = 'Spain'; -- Solución correcta 1.
select NombreCliente from Clientes where Pais in ('España', 'Spain'); -- Solución correcta 2.

-- Ejercicio 13
select Pais, count(CodigoCliente) as Cantidad_Clientes from Clientes group by Pais; -- Solución correcta.

-- Ejercicio 14
select count(CodigoCliente) as Cantidad_Clientes from Clientes where Ciudad = 'Madrid'; -- Solución correcta 1.
select Pais, count(NombreCliente) TotalClientesPais from Clientis where Ciudad = 'Madrid'; -- Solución correcta 2.

-- Ejercicio 15
select count(CodigoCliente) as Cantidad_Clientes_Ciudad from Clientes where Ciudad like 'M%'; -- Solución correcta.

-- Ejercicio 16
select CodigoEmpleadoRepVentas, count(CodigoCliente) as Representante_Venta from Clientes group by CodigoEmpleadoRepVentas; -- Solución medianamente correcta.
select CodigoEmpleadoRepVentas, NumClientes from (select CodigoEmpleado from Empleados where Puesto = 'Representante Ventas') T1 inner join (select CodigoEmpleadoRepVentas, count(NombreCliente) NumClientes from Clientes group by CodigoEmpleadoRepVenta) T2 on T1.CodigoEmpleado = T2.CodigoEmpleadoRepVentas; --Solución correcta.

-- Ejercicio 17
select count(CodigoCliente) as Cantidad from Clientes where CodigoEmpleadoRepVentas = NULL; -- Solución incorrecta.
select NombreCliente, B from Clientes left join (select CodigoCliente A, NombreCliente B from Clientes inner join (select CodigoEmpleado from Empleados where Puesto = 'Representante Ventas') T1 on Clientes.CodigoEmpleadoRepVentas = T1.CodigoEmpleado) ClienteRep on Clientes.CodigoCliente = ClienteRep.A; -- En revisión.

-- Ejercicio 18
select min(FechaPago) as Primera_Venta, max(FechaPago) as Ultima_Venta from Pagos; -- Medianamente correcto.
select IDTransaccion from Pagos where FechaPago in ((select min(FechaPago) Primer from Pagos), (select max(FechaPago) Ultimo from Pagos)); -- Medianamente correcta 2.
select * from (select IDTransaccion PrimerPago from Pagos where FechaPago = (select min(FechaPago) from Pagos)) T1,  (select IDTransaccion UltimoPago from Pagos where FechaPago = (select max(FechaPago) from Pagos)) T2; -- Solución Correcta.
 select IDTransaccion, FechaPago from Pagos order by FechaPago asc limit 10; -- Correcta pero con desventajas.

-- Ejercicio 19
select CodigoCliente from Pagos where FechaPago like '2008%'; -- Respuesta medianamente correcta.
select distinct CodigoCliente from Pagos where FechaPago like '2008%'; -- Respuesta correcta.

-- Ejercicio 20
select distinct Estado from Pedidos; -- Solución correcta.

-- Ejercicio 21
select CodigoPedido, CodigoCliente, FechaEsperada, FechaEntrega from Pedidos where FechaEsperada < FechaEntrega;

-- Ejercicio 22
select NumeroLinea, sum(Cantidad) Total from DetallePedidos group by NumeroLinea order by NumeroLinea asc;

-- Ejercicio 23
select CodigoProducto, sum(Cantidad) Total from DetallePedidos group by CodigoProducto order by Total desc limit 10;

-- Ejercicio 24
select CodigoPedido, CodigoCliente, FechaEsperada, FechaEntrega from Pedidos where (FechaEntrega + 2) = FechaEsperada;
