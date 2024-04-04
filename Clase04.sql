show databases;

use cursobd;

/*
Los objetos creados en Windows, no diferencian mayúsculas de
minúsculas. Pero los objetos creados en Linux o Unix son case
sensitive.
Esto quiere decir que 
create database ADMINISTRACION;
create database administracion;
bajo Windows estamos queriendo crear la misma base de datos 2 veces
pero en Linux serían 2 bases de datos distintas.
*/ 

use cursobd; -- con el comando use nos posicionamos dentro de la base

show tables;
-- muestra las tablas de la base de datos

-- ---------------------------------------
-- Cómo crear una tabla en MySQL
-- ---------------------------------------

-- crear la tabla clientes
create table clientes(
codigo int auto_increment,
nombre varchar(50) not null,
apellido varchar(50) not null,
cuit char(13) not null,
direccion varchar(100),
primary key(codigo)
);

/* 
esta instrucción tiene varias líneas, pero sabemos que termina en 
el ;
PRIMARY KEY() declara que un campo es clave primaria.
La clave primaria identifica al registro como único y no puede tener
valores duplicados.
La claúsula auto_increment permite que el contenido de dicho campo
sea ingresado automáticamente en forma autonumeradas, esta cláusula
es sólo aplicable a la PK
La cláusula not null indica que ese campo es de ingreso obligatorio
y no puede ser omitido.
*/

show tables; -- verificamos que exista la tabla

describe clientes; -- muestra la descripción de los campos de la tabla

select * from clientes; 
-- muestra todos los registros de la tabla

drop table clientes;
-- borramos la tabla de clientes

drop table if exists clientes;
-- elimina la tabla si es que existe
-- borrar un objeto inexistente causa un error de ejecución
-- por lo tanto agregamos la cláusula if exists

create table if not exists clientes(
codigo int auto_increment,
nombre varchar(50) not null,
apellido varchar(50) not null,
cuit char(11) not null,
direccion varchar(100),
primary key(codigo)
);
-- en caso de no existir la tabla, la crea.
-- si no, omite la creación

-- ---------------------------------
-- Ingresar registros en una tabla
-- ---------------------------------

-- ingresamos 5 registros en la tabla clientes
insert into clientes (nombre, apellido, cuit, direccion)
values ('Juan', 'Gardoni', '12354659874', 'Perú 1023');
insert into clientes (nombre, apellido, cuit, direccion)
values ('Laura', 'Gómez', '32659856541', 'Laprida 2052');
insert into clientes (nombre, apellido, cuit, direccion)
values ('Mario', 'López', '33665584521', 'Medrano 162');
insert into clientes (nombre, apellido, cuit)
values ('Juan', 'Perez', '36598745216');
insert into clientes (nombre, apellido, cuit, direccion)
values ('Monica', 'Freire', '22556669998', null);

select * from clientes;

