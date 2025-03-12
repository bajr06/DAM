-- Pregunta 1
select distinct poblacion from Cliente;

-- Pregunta 2
select * from Cliente where Poblacion = 'Madrid';

-- Pregunta 3
select Nombre from Cliente where Poblacion = 'Madrid' or Poblacion = 'Barcelona';

-- Pregunta 4
select Nombre, Telefono from Cliente where Poblacion = 'Madrid' or Direccion = 'Calle Amarilla';

-- Pregunta 5
select distinct Nombre from Cliente where nombre like 'M%';

-- Pregunta 6
select distinct Nombre from Cliente where Nombre like 'M%' and Nombre like '%S';

-- Pregunta 7
select Nombre from Producto where Precio between 1500 and 2000;

-- Pregunta 8
select Nombre from Producto group by Nombre;