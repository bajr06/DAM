# Tema 3. Realización de consultas. Algebra relacional 

1. Π Nombre (σ Población = 'Palencia' (CLIENTE))

2. Π CodProducto (σ CodProducto = Descripción (PRODUCTO))

3. T1 <- (Π Nombre (FK), IdVenta, Cantidad (σ Cantidad > 500 (VENTA)))
   Π Nombre, IdVenta, Cantdad (Π NºCliente, Nombre (CLIENTE) ⋈ T1 (Cliente.NºCliente = T1.NºCliente))

4. T1 <- Π NºCliente (CLIENTE) - Π NºCliente (VENTA)
   Π Nombre (T1 ⋈ Cliente)
   T1.NºCliente = Cliente.NºCliente

5. T1 <- Π NºCliente (VENTAS)
   T1.X.CLIENTE (T1.NºCliente = Cliente.NºCliente )  

6. T1 <- Π Cantidad (σ IdVenta = 18 (VENTA))
   Π IdVenta (σ VENTA Cantidad > T1.Cantidad (T1 X VENTA))

7. ...

8. T1 <- Π NºCliente (σ Poblacion = 'Palencia' (CLIENTE))
   T2 <- Π CodProducto (T1 ⋈ VENTA)
   T1.NºCLIENTE = VENTA.NºCliente 
   Π Descripcion (T2 ⋈ Producto)
   T2.CodProducto > Producto.CodProducto
