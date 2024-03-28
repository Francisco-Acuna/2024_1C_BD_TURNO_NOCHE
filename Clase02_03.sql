-- ------------------------------------
-- Curso Base de Datos con MySQL
-- Trayecto Programador
-- ------------------------------------

-- comentario en línea
-- es necesario dejar un espacio luego de los --

/*
bloque de
comentarios
se puede escribir en varias
líneas
*/

-- ANSI SQL. El ANSI es un estándar del lenguaje
-- Funciona en todas las bases de datos relacionales

# comentario no ANSI. Sólo funciona en MySQL

-- SQL -> Structure Query Language (Lenguaje de Consulta Estructurada)

/*
DDL -> Data Definition Language (Lenguaje de Definición de Datos)
- CREATE
- ALTER
- DROP
*/

/*
DML -> Data Manipulation Language (Lenguaje de Manipulación de Datos)
- SELECT
- INSERT
- DELETE
- UPDATE
*/

-- --------------------------------------------
-- Tipos de datos más comunes en MySQL
-- --------------------------------------------

/*
Tipos de datos de texto más utilizados:
CHAR -> este tipo de dato lo utilizamos cuando sabemos de antemano cuántos caracteres se guardarán
Ejemplo, si declaramos un tipo de dato CHAR de 20 posiciones:
nombre CHAR(20)
siempre va a estar utilizando 20 bytes para guardar el dato
|--------------------| -> 20 bytes
|ana-----------------| -> 20 bytes
|carlos--------------| -> 20 bytes
|maximiliano---------| -> 20 bytes

VARCHAR -> este tipo de datos lo utilizamos cuando no sabemos la longitud del dato que se ingresará
Ejemplo, si declaramos un tipo de dato VARCHAR de 20 posiciones:
nombre VARCHAR(20)
|--------------------| -> 20 bytes
|ana-----------------| -> 3 + 1 bytes (son 3 caracteres del nombre + 1 caracter de aviso de longitud)
|carlos--------------| -> 6 + 1 bytes
|maximiliano---------| -> 11 + 1 bytes
*/

/*
Tipos de datos numéricos

BIT o BOOL es un entero que representa un valor de verdad. Sirve para guardar valores lógicos.
El 0 representa el valor falso y cualquier otro número distinto de 0 representa el valor de verdad.

TINYINT almacena un entero de 1 byte
|--------|--------|
-128	 0		 127

TINYINT unsigned
|----------------|
0				255

SMALLINT (signed)
|--------|--------|
-32.768  0		32.767

SMALLINT (unsigned)
|----------------|
0			  65.535

INT (signed)
|--------|--------|
-2.147.483.648	2.147.483.647

INT (unsigned)
|----------------|
0			  4.294.967.295

BIGINT es el valor más grande (64 bits)

FLOAT (son decimales de 32 bits)
almacena hasta 8 dígitos
|--------|
por ejemplo si quisiera hacer
10/3, el resultado sería:
3.333333 (el . cuenta como un dígito más)
y si hiciera 100/3, el resultado sería:
33.33333 (se desplazó el punto, por eso decimos que es de punto flotante)
se achica la precisión decimal.

DOUBLE (son decimales de 64 bits)
almacena hasta 17 dígitos (esto puede variar según varios factores)
si quisiera hacer
10/3 el resultado sería:
3.333333333333333
ó 100/3
33.33333333333333

DECIMAL
representa números decimales de precisión fija, es una precisión exacta.
La estructura es:
DECIMAL(n,m)
donde n es la cantidad de dígitos que tendrá el número en total
y m es la cantidad de dígitos que se utilizarán para la parte decimal
Ejemplo:
DECIMAL(10,2)
xxxxxxxx.xx (el punto no se considera un dígito en este caso)
el mayor número que puedo representar es
99999999.99
ocupa en MySQL la precisión + 2 como cantidad de bytes
en este caso sería 
10 + 2 = 12 bytes
*/

/*
Tipos de datos de fecha y hora

DATE
ocupa 3 bytes y almacena una fecha (por defecto es YYYY-MM-DD) 
por ejemplo '2024-03-27'

DATETIME
ocupa 8 bytes y guarda la fecha y la hora
el formato es (YYYY-MM-DD HH:MM:SS)

TIME
ocupa 3 bytes y guarda la hora
el formato es (HH:MM:SS)
*/

-- --------------------------------------------
-- COMANDO SELECT
-- --------------------------------------------

-- el comando select nos sirve para traer registros de una tabla,
-- pero también lo podemos utilizar para imprimir mensajes en la consola
-- como por ejemplo:
select 'Hola Mundo!';
-- para ejecutar debemos pararnos sobre la línea de la instrucción y presionar ctrl + enter
-- también puedo realizar cálculos matemáticos
select 2 + 2;
-- la salida es el resultado de la operación
-- se pueden agregar alias a las consultas select
-- un alias es un nombre de campo inventado
select 2 + 2 as 'suma';
-- el uso del as ya no es obligatorio, al igual que las comillas simples
select 2 + 2 suma;
-- no podemos utilizar espacios en los nombres de columnas
-- por lo cual, utilizamos la convención de escritura snake_case
select 2 + 2 es_el_resultado_de_la_suma;
-- si no, lo que podemos hacer es encerrar la frase entre comillas
select 2 + 2 'es el resultado de la suma';
-- en MySQL podemos reemplazar las comillas simples por dobles, pero no es ANSI
select 2 + 2 "es el resultado de la suma";

-- Algunos comandos para trabajar con datos de fecha y hora:

select curdate();
-- devuelve la fecha actual

select curtime();
-- devuelve la hora actual

select sysdate();
-- devuelve la fecha y la hora actual

-- ----------------------------------------
-- Cómo crear una Base de Datos
-- ----------------------------------------

show databases; -- muestra las bases de datos del servidor

SHOW DATABASES; -- puedo escribir las instrucciones en mayúsculas o minúsculas
-- el lenguaje es NO CASE SENSITIVE
-- el ; es el terminador de instrucciones

drop database if exists cursobd;
-- borro la base de datos si es que existe

create database cursobd;
-- creo la base de datos cursobd

create database if not exists cursobd;
-- crea la base de datos si es que no existe

show databases;







