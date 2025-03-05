# Examen de Algebra Relacional 2025

## Ejercicio 1

**Escribe el enunciado de las siguientes consultas y pinta las tablas resultantes de ejecutarlas.**

- $\sigma_{Stock = 50 and Stock >= 100} (PRODUCTOS)$

    No devuelve nada.

<br>

- $Pi_{Ciudad}(CLIENTES) \cap \Pi_{Ciudad}(PROVEEDOR)$

    | Ciudad |
    | --- |
    | Madrid |
    | Barcelona |
    | Valcencia |

<br>

- $Pi_{Ciudad}(CLIENTES) - \Pi_{Ciudad}(PROVEEDOR)$

    | Ciudad |
    | --- |
    | Sevilla |
    | Bilbao |

<br>

- $PROVEEDOR \; X \; PRODUCTOS$

    <!-- Añadirlp-->

<br>

- $\Pi_{Nombre} (PRODUCTOS) X \Pi_{Nombre}\left(\sigma_{Categoria = "Relojería"} (PRODUCTO)\right)$

    | Nombre |
    | --- |
    | Laptop |
    | Smartphone |
    | Reloj |
    | Zapatos |
    | Auriculares |

<br>

## Ejercicio 2

**Escribe la consulta que dé como resultado las siguientes tablas:**

- $T1 \leftarrow \Pi_{Proveedor_ID, Nombre, Proveedor} (PROVEEDOR)$
    $\left(T1 \bowtie Contacto\_Proveedor\right)$
    
    $\Pi_{Nombre\_Proveedor, Nombre}\left(T1.Proveedor\_ID = Contacto\_Proveedor\right)$

<br>

- $\Pi_{DNI, email, ciudad} \left(\sigma_{Ciudad = '\%B'} (Clientes)\right)$

<br>

- $\Pi_{Orden\_ID, Fecha\_Orden, Fecha\_Entrega} \left(\sigma_{estado='pendiente'}(Ordenes)\right)$

<br>

- $T1 \leftarrow \left(\sigma_{Detalle\_ID=1} (Detalles\_Orden)\right)$
    $\Pi_{Detalle\_ID, Orden\_ID, Nombre, Cantidad, Precio\_Unitario, Subtotal} \left(T1 \bowtie (\Pi_{Producto\_ID, Nombre} (Producto))\right)$
    
    $T1.Producto\_ID = Producto.Producto\_ID$

<br>

## Ejercicio 3

**Escribe la consulta que dé como resultado las siguientes tablas:**

- a. El DNi, nombre y apelido de los clientes que tiene más de 35 años

    $\Pi_{DNI, Nombre, Apellido} \left(\sigma_{Edad > 35} (CLIENTES)\right)$

<br>

- b.

    $T1 \leftarrow \Pi_{Producto\_ID} \left(\sigma_{Categoria = 'Electronica'} (PRODUCTOS)\right)$

    $\Pi_{Orden\_ID} \left(T1 \bowtie Detalles\_Orden\right)_{T1.Producto\_ID = Detalles.Producto\_ID}$

<br>

- c.

    $T1 \leftarrow \Pi_{Ciudad\_Proveedor \;\varphi\; Ciudad} \left(Proveedores\right) - \Pi_{Ciudad} \left(Clientes\right)$

    $\Pi_{Nombre\_Proveedor} \left(T1 \bowtie Proveedor\right)_{T1.Ciudad = Proveedor.Ciudad}$

<br>

- d.

    $T1 \leftarrow \Pi_{Cliente\_ID} \left(\sigma_{Estado = 'Pendiente'} (Ordenes)\right)$

    $\Pi_{Nombre} \left(T1 \bowtie Cliente\right)_{T1.Cliente\_ID = Cliente.Cliente\_ID}$

<br>

- e.

    $T1 \leftarrow \Pi_{Nombre} \left(\sigma_{Ciudad = 'Madrid'} (Cliente)\right)$

    $T2 \leftarrow \Pi_{Proveedor\_ID} \left(\sigma_{Ciudad\_Proveedor = 'Madrid'} (Proveedores)\right)$

    $T3 \leftarrow \Pi_{Nombre} \left(T2 \bowtie Contacto\_Proveedores\right)_{T2.Proveedor\_ID = Contacto\_Proveedores.Proveedor\_ID}$

    $T1 \cup T3$

<br>

- f.

    $T1 \leftarrow \Pi_{Proveedor\_ID, Nombre\_Proveedor} \left(\sigma_{Ciudad = 'Madrid'} (Proveedores)\right)$

    $\Pi_{Nombre\_Proveedor, Nombre, Telefono} \left(T1 \bowtie Contacto\_Proveedores\right)_{T1.Proveedor\_ID = Contacto\_Proveedores.Proveedor\_ID}$

<br>

- g.

    $T1 \leftarrow \Pi_{Orden\_ID, Cliente\_ID} \left(\sigma_{Orden\_ID = 1} (Ordenes)\right)$

    $T2 \leftarrow \Pi_{Cliente\_ID, Producto\_ID} \left(T1 \bowtie Detalles\_Orden\right)_{T1.Orden\_ID = Detalles\_Orden.Orden\_ID}$

    $T3 \leftarrow \Pi_{Nombre, Producto\_ID, \;\varphi\; Nombre\_Cliente} \left(T2 \bowtie Cliente\right)_{T2.Cliente\_ID = Cliente.Cliente\_ID}$

    $\Pi_{Nombre\_Cliente, Nombre} \left(T3 \bowtie Producto\right)_{T3.Producto\_ID = Producto.Producto\_ID}$

<br>

- h.

    $T1 \leftarrow \Pi_{DNI} \left(Cliente\right) \cap \Pi_{DNI} (Contanco\_Proveedor)$
    <!-- La otra opcion es -->
    $T1 \leftarrow \Pi_{DNI} \left(Cliente \bowtie Contacto\_Proveedor\right)_{Cliente.DNI = Contacto\_Proveedor.DNI}$

    $T2 \leftarrow \Pi_{ID\_Cliente} \left(Cliente \bowtie T1\right)_{Cliente.ID = T1.DNI}$

    $T3 \leftarrow \Pi_{Orden\_ID} \left(T2 \bowtie Ordenes\right)_{T2.ID\_Cliente = Ordenes.ID\_Cliente}$

    $T4 \leftarrow \Pi_{Producto\_ID} \left(T3 \bowtie Detalles\_Orden\right)_{T3.Orden\_ID = Detalles\_Orden.ID}$

    $\Pi_{Nombre} \left(T4 \bowtie Producto\right)_{T4.Producto\_ID = Producto.Producto\_ID}$

<br>

- i.

    $T1 \leftarrow \Pi_{Producto\_ID} \left(\sigma_{Cantidad <= 2} (Detalles\_Orden)\right)$

    $\Pi_{Producto\_ID} \left(Detalle\_Orden\right) - T1$
