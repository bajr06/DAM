-- Seleccion de tablas
select * from cliente; -- Seleciona toda la tabla

select nombre from cliente where poblacion = 'Madrid'; -- Selecciona solamente la columna nombre de las personas que pertenezcan a Madrid.

select * from cliente where poblacion = 'Madrid' or poblacion = 'Toledo'; -- Lo mismo que la anterior, pero incluyendo a Toledo.

select * from cliente where not poblacion = 'Madrid'; -- Todos los tienes que no pertenecen a Madrid.

select * from cliente where poblacion in('Madrid', 'Toledo'); -- Todos los clienes que esten en Madrid o Toledo.

select * from cliente where n_cliente between 10 and 30; -- El número de clientes que se encuentre entre el 10 y el 30.

select * from cliente where nombre like 'S%'; -- Aquellos nombres de los clientes que empiecen con S.

select * from cliente where nombre like 'A%'; -- Lo mismo que el anterior, pero con la A.

select * from cliente where nombre like 'A__'; -- ¿?

select * from Cliente where poblacion = 'Madrid' union select * from Cliente where poblacion = 'Toledo';-- Union de tablas.

select * from Cliente where poblacion = 'Madrid' or poblacion = 'Toledo' order by poblacion; -- Ordena por orden alfabético.