CREATE DATABASE migrupot2;  -- crear una base de datos
USE migrupot2; -- utilizar mi BBDD
create table libros (id_libro int primary key auto_increment not null,
					 nombre varchar(25) not null,
                     categoria varchar(25) not null,
                     id_autores int not null,
                     editorial varchar(25) not null,
                     fecha_publicacion date not null,
                     precio int not null,
                     cantidad int not null,
                     foreign key (id_autores) references autores(ID_autores));

create table autores (ID_autores int primary key auto_increment not null,
					  nombre varchar(25) not null,
                      fecha_nacimiento date not null,
                      nacionalidad varchar(25) not null);
create table pedidos(ID_pedido int primary key auto_increment not null,
					 id_cliente int not null,
                     correo varchar(25) not null,
                     estado varchar(25) not null,
                     fecha_compra date not null,
                     libros int not null,
                     cantidad int not null,
                     foreign key (id_cliente) references clientes(ID_clientes),
                     foreign key (libros) references clientes(ID_clientes));
create table clientes (ID_clientes int primary key auto_increment not null,
					  nombre varchar(25) not null,
                      correo varchar(25) not null,
                      telefono int not null,
                      direccion varchar(25) not null);
create table transacciones (id_transaccion int primary key auto_increment not null,
							id_pedido int not null,
                            metodo_pago varchar(25) not null,
                            monto_total int not null,
                            fecha_transaccion date not null,
                            foreign key (id_pedido) references pedidos(ID_pedido));
                            
describe libros;
describe autores;
describe pedidos;
describe clientes;
describe transacciones;