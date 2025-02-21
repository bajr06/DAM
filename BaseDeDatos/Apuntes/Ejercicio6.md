# Ejericico 04.6 de Algebra Relacional

1. $\Pi_{Nombre} \left(\sigma_{Nº.Cliente = 3}\right)^{\left(Cliente\right)})$

Clientes
| Nombre |
| --- |
| Ana |

<br><br>

2. $\Pi_{NºArticulo, Precio} \left(\sigma_{Stock > 50}\right)^{\left(Articulos\right)}$

Articulos
| NºArticulo | Precio |
| --- | --- |
| A7 | 3 |

<br><br>

3. $\Pi_{NºCliente} \left(Cliente\right) - \Pi_{NºCliente} \left(Telefonos\right)$

| NºCliente |
| --- |
| 3 |

<br><br>

4. Nombre de los clientes que se apelliden "Muro".

$\Pi_{Nombre} \left(\sigma_{Apellido = 'Muro'}\right)\left(Clientes\right)$

<br><br>

5. Among Us

$T1 \leftarrow \Pi_{NºCliente} \left(\sigma_{Tipo = 'Particular'}\right) \left(Telefonos\right) %Esto va dentro de los parentesis$

$\Pi_{Nombre; Numero} \left(T1 \bowtie Cliente\right)_{T1.NºCliente = Cliente.NºCliente}$

<br><br>

6. Sus

$T1 \leftarrow \Pi_{NºCliente}\left(\sigma_{Nombre = 'Juan'}\right) \left(Clientes\right)$

$ \Pi_{Estado, fecha}\left(T1 \bowtie Pedidos\right)_{T1.NºCliente = Pedidos.NºCliente}$

<br><br>

7. Swain

$T1 \leftarrow \Pi_{NºCliente}\left(\sigma_{Estado = 'P'}\right)^{\left(Pedidos\right)}$

$\Pi_{Nombre} \left(T1 \bowtie Clientes\right)_{T1.NºCliente = Cliente.NºCliente}$

<br><br>

8. Pantheon

$T1 \leftarrow \Pi_{NºCliente} \left(Cliente\right) - \Pi_{NºCódigo\_Cliente} \left(Pedidios\right)$

$\Pi_{Nombre, Apellido} \left(T1 \bowtie Clientes \right)_{T1.NºClientes = Clientes.NºClientes}$