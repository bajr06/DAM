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
select distinct Estado from Pedidos; -- Solución medianamente correcta.
select count(*) from (select distinct Estado from Pedidos) T; -- Solución correcta.

-- Ejercicio 21
select CodigoPedido, CodigoCliente, FechaEsperada, FechaEntrega from Pedidos where FechaEsperada < FechaEntrega; -- Solucicón medianamente correcta.
select CodigoPedido, CodigoCliente, FechaEsperada, FechaEntrega from Pedidos where FechaEsperada < FechaEntrega or FechaEntrega is null; -- Solución correcta.

-- Ejercicio 22
select NumeroLinea, sum(Cantidad) Total from DetallePedidos group by NumeroLinea order by NumeroLinea asc; -- Solución correcta.

-- Ejercicio 23
select CodigoProducto, sum(Cantidad) Total from DetallePedidos group by CodigoProducto order by Total desc limit 20; -- Solución correcta.

-- Ejercicio 24
select CodigoPedido, CodigoCliente, FechaEsperada, FechaEntrega from Pedidos where (FechaEntrega + 2) <= FechaEsperada; -- Solución medianamente correcta.
select CodigoPedido, CodigoCliente, FechaEsperada, FechaEntrega from Pedidos where datediff(FechaEsperada, FechaEntrega) >= 2; -- Solución correcta.

-- Ejercicio 25
select BaseImponible, IVA, (BaseImponible + IVA) Total from (select sum(Cantidad * PrecioUnidad) BaseImponible, (sum(PrecioUnidad * Cantidad) * 0.21) IVA from DetallePedidos) T; -- Solución correcta.
select sum(Cantidad * PrecioUnidad) BaseImponible, (sum(PrecioUnidad * Cantidad) * 0.21) IVA, sum(Cantidad * PrecioUnidad + Cantidad * PrecioUnidad * 0.21) Total from DetallePedidos; -- Solución correcta.

-- Ejercicio 26
select Codigo Producto, sum(Cantidad * PrecioUnidad) BaseImponible, (sum(PrecioUnidad * Cantidad) * 0.21) IVA, sum(Cantidad * PrecioUnidad + Cantidad * PrecioUnidad * 0.21) Total from DetallePedidos where CodigoProducto like 'FR%' group by CodigoProducto; -- Solución correcta.
select Codigo Producto, sum(Cantidad * PrecioUnidad) BaseImponible, (sum(PrecioUnidad * Cantidad) * 0.21) IVA, sum(Cantidad * PrecioUnidad + Cantidad * PrecioUnidad * 0.21) Total from     DetallePedidos group by CodigoProducto having CodigoProducto like 'FR%'; -- Solución correcta.

-- Ejercicio 27
select Nombre, PrecioVenta from Producto where PrecioVentas = (select max(PrecioVenta) Maximo from Productos);

-- Ejercicio 28
select * from;

-- Ejercicio 29

-- Ejercicio 30

-- Ejercicio 31

-- Ejercicio 32

-- Ejercicio 33

-- Ejercicio 34

-- Ejercicio 35

-- Ejercicio 36

-- Ejercicio 37

-- Ejercicio 38

-- Ejercicio 39

-- Ejercicio 40

-- Ejercicio 41

-- Ejercicio 42

-- Ejercicio 43

-- Ejercicio 44

-- Ejercicio 45

-- Ejercicio 46

-- Ejercicio 47

-- Ejercicio 48

-- Ejercicio 49

-- Ejercicio 50

-- Ejercicio 51

-- Ejercicio 52

-- Ejercicio 53

-- Ejercicio 54

-- Ejercicio 55

-- Ejercicio 56

-- Ejercicio 57

-- Ejercicio 58

-- Ejercicio 59

