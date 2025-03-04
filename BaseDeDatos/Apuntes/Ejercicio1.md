# Tema 3. Realización de consultas. Algebra relacional 

1. $\Pi_{Nombre} \left(\sigma_{Población = 'Palencia'} (CLIENTE)\right)$

2. $\Pi_{CodProducto} \left(\sigma_{CodProducto = Descripción} (PRODUCTO)\right)$

3. T1 <- (Π Nombre (FK), IdVenta, Cantidad (σ Cantidad > 500 (VENTA))); <br>
   Π Nombre, IdVenta, Cantdad (Π NºCliente., Nombre (CLIENTE.) ⋈ T1 (Cliente..NºCliente. = T1.NºCliente)).

4. T1 <- Π NºCliente (CLIENTE) - Π NºCliente (VENTA); <br>
   Π Nombre (T1 ⋈ Cliente); <br>
   &emsp;&emsp;&emsp;&emsp;&emsp;T1.NºCliente = Cliente.NºCliente.

5. T1 <- Π NºCliente (VENTAS); <br>
   T1.X.CLIENTE (T1.NºCliente = Cliente.NºCliente ).

6. T1 <- Π Cantidad (σ IdVenta = 18 (VENTA)); <br>
   Π IdVenta (σ VENTA Cantidad > T1.Cantidad (T1 X VENTA)).

7. ...

8. T1 <- Π NºCliente (σ Poblacion = 'Palencia' AND 'Valladolid' (CLIENTE)); <br>
   T2 <- Π CodProducto (T1 ⋈ VENTA); <br>
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;T1.NºCliente = VENTA.NºCliente;  <br>
   Π Descripcion (T2 ⋈ Producto); <br>
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;T2.CodProducto > Producto.CodProducto.

9. T1 <- Π NªCliente (VENTA); <br>
   Π Poblacion (T1 ⋈ CLIENTE); <br>
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;T1.NºCliente = Cliente.NºCliente.

10. T1 <- Π NºCliente (σ Pagadao = NºCliente (FACTURA)); <br>
    Π Nombre (T1 ⋈ Cliente); <br>
    &emsp;&emsp;&emsp;&emsp;&emsp;FACTURA.NºCliente = CLIENTE.NºCliente.

11. T1 <- Π NºCliente (σ Pagadao = NºCliente (FACTURA)); <br>
    T2 <- Π NºCliente (FACTURA) - T1; <br>
    Π Nombre (T2 ⋈ CLIENTE); <br>
    &emsp;&emsp;&emsp;&emsp;&emsp;T2.NºCliente = Cliente.NºCliente.
