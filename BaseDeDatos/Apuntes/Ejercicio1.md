# Tema 3. Realización de consultas. Algebra relacional 

1. Π Nombre (σ Población = 'Palencia' (CLIENTE))

2. Π CodProducto (σ CodProducto = Descripción (PRODUCTO))

3. Π Nombre, IdVenta, Cantidad (σ Cantidad > 500 (CLIENTE ⋈ NºCliente, VENTA))

4. Π Nombre (CLIENTE) - Π Nombre (CLIENTE ⋈ NºCliente VENTA)

5. Π Nombre (σ Distanciat(CodProducto) = CantidadP (CLIENTES ⋈ NºCliente VENTA))

6. Π IdVenta (σ Cantidad > (Select Cantidad From VENTA Where IdVenta = 18)(VENTA))
