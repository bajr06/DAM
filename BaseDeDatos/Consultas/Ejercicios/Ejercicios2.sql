-- Ejercicio 1
select CodigoOficina, Ciudad from Oficinas;

-- Ejercicio 2
select count(CodigoEmpleado) as Cantidad_Empleados from Empleados;

-- Ejercicio 3
select Pais, count(CodigoCliente) as Cantidad_Clientes from Clientes group by Pais;

-- Ejercicio 4
select avg(Cantidad) as Media_2008 from Pagos where FechaPago like '2008%';

-- Ejercicio 5
select Estado, count(CodigoPedido) as Cantidad from Pedidos group by Estado order by Cantidad desc;

-- Ejercicio 6
select min(PrecioVenta) as Precio_bajo, max(PrecioVenta) as Precio_alto from Productos;

-- Ejercicio 7
select Ciudad, Telefono from Oficinas where Pais = 'EEUU';

-- Ejercicio 8
select Nombre, Apellido1, Apellido2, Email from Empleados where CodigoJefe = (select CodigoEmpleado from Empleados where Nombre = 'Alberto' and Apellido1 = 'Soria');

-- Ejercicio 9
select Puesto, Nombre, Apellido1, Apellido2, Email from Empleados where Puesto = 'Director General';

-- Ejercicio 10
select Nombre, Apellido1, Apellido2, Puesto from Empleados where Puesto != 'Representante Ventas';

-- Ejercicio 11
select count(CodigoCliente) as Cantidad_Clientes from Clientes;

-- Ejercicio 12
select NombreCliente from Clientes where Pais = 'España' or Pais = 'Spain';

-- Ejercicio 13
select  Pais, count(CodigoCliente) as Cantidad_Clientes from Clientes group by Pais;

-- Ejercicio 14
select count(CodigoCliente) as Cantidad_Clientes from Clientes where Ciudad = 'Madrid';

-- Ejercicio 15
select count(CodigoCliente) as Cantidad_Clientes from Clientes where Ciudad like 'M%';

-- Ejercicio 16
select CodigoEmpleadoRepVentas, count(CodigoCliente) as Representante_Venta from Clientes group by CodigoEmpleadoRepVentas;

-- Ejercicio 17
select count(CodigoCliente) as Cantidad from Clientes where CodigoEmpleadoRepVentas = NULL;

-- Ejercicio 18
select min(FechaPago) as Primera_Venta, max(FechaPago) as Ultima_Venta from Pagos;

-- Ejercicio 19
select CodigoCliente from Pagos where FechaPago like '2008%';

-- Ejercicio 20
select distinct Estado from Pedidos;
