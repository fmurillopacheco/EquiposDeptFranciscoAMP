# EquiposDeptFranciscoAMP
Realizar un CRUD de tres tablas que residen en la base de datos equiposDept siguiendo el MVC y el patrón DAOFactory y utilizando pool de conexiones para la conexión a la base de datos. También habrá que utilizar la librería JSTL y el lenguaje de expresiones. La aplicación tendrá una página inicial donde se podrá acceder a cada una de las funcionalidades. Se puntuará el diseño de dicha página. El diseño de está página será responsive.

Vamos a implementar una aplicación para gestionar la asignación de equipos portátiles a alumnos del centro. Toda la información la almacenaremos en la base de datos pruebasJAVA en dos tablas: alumnos y equipos.  Existirá una relación uno a muchos entre alumnos y equipos. Así, un alumno sólo tendrá un equipo asignado pero u equipo puede estar asociado a varios alumnos.

Existirá una relación uno a muchos entre alumnos y equipos. Así, un alumno sólo tendrá un equipo asignado pero u equipo puede estar asociado a varios alumnos.
```
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 5.7.28-log MySQL Community Server (GPL)

Copyright (c) 2000, 2019, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| pruebasjava        |
| sys                |
+--------------------+
5 rows in set (0.00 sec)
```
Creamos la Base de datos EquiposDept, dando permisos al usuario java2019 con password "2019".

***Creación de BD equiposDept.***
```
mysql>	create database equiposdept charset utf8 collate utf8_spanish_ci;
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| equiposdept        |
| mysql              |
| performance_schema |
| pruebasjava        |
| sys                |
+--------------------+
6 rows in set (0.00 sec)

mysql> use equiposdept;
Database changed
```
***Asignación de permisos al usuario java2019 sobre la Base de datos equiposDept.***
```
mysql>	GRANT ALL PRIVILEGES ON *.* TO 'java2019'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| equiposdept        |
| mysql              |
| performance_schema |
| pruebasjava        |
| sys                |
+--------------------+
6 rows in set (0.00 sec)

mysql> show tables;
Empty set (0.00 sec)
```
***Creamos las tablas alumnos, grupos y equipos en la BD EquiposDept, con el usuario java2019.***
```
mysql>	CREATE TABLE alumnos(	
		-> idAlumno int(11) not null,
		-> nombre varchar(15) not null,
		-> apellidos varchar(30) not null,
		-> nif char(9) not null,
		-> idGrupo tinyint(4) not null,
		-> fechaNacimiento date not null,
		-> sexo char (1) not null,
		-> email varchar (50) not null,
		-> idEquipo smallint(6) null,
		-> PRIMARY KEY (idAlumno)
		-> );
    Query OK, 0 rows affected (0.04 sec)
  
mysql> desc alumnos;
+-----------------+-------------+------+-----+---------+----------------+
| Field           | Type        | Null | Key | Default | Extra          |
+-----------------+-------------+------+-----+---------+----------------+
| idAlumno        | int(11)     | NO   | PRI | NULL    | auto_increment |
| nombre          | varchar(15) | NO   |     | NULL    |                |
| apellidos       | varchar(30) | NO   |     | NULL    |                |
| idGrupo         | tinyint(4)  | NO   |     | NULL    |                |
| nif             | char(9)     | NO   |     | NULL    |                |
| fechaNacimiento | date        | NO   |     | NULL    |                |
| sexo            | char(1)     | NO   |     | NULL    |                |
| email           | varchar(50) | NO   |     | NULL    |                |
| idEquipo        | smallint(6) | YES  |     | NULL    |                |
+-----------------+-------------+------+-----+---------+----------------+
9 rows in set (0.00 sec)
```
***Creación tabla equipos.***
```
mysql>	CREATE TABLE equipos(
		idEquipo smallint(6) not null AUTO_INCREMENT,
		marca varchar(50) not null,
		numSerie char(9) not null,
		foto varchar(20) null DEFAULT 'default.png',
		PRIMARY KEY (idEquipo)
		);
    
mysql> desc equipos;
+----------+-------------+------+-----+-------------+----------------+
| Field    | Type        | Null | Key | Default     | Extra          |
+----------+-------------+------+-----+-------------+----------------+
| idEquipo | smallint(6) | NO   | PRI | NULL        | auto_increment |
| marca    | varchar(50) | NO   |     | NULL        |                |
| numSerie | char(9)     | NO   |     | NULL        |                |
| foto     | varchar(20) | YES  |     | default.png |                |
+----------+-------------+------+-----+-------------+----------------+
4 rows in set (0.00 sec)
```
***Creación de tabla grupos.***
```
mysql> 	CREATE TABLE grupos(
		-> idGrupo tinyint (2) not null AUTO_INCREMENT primary key,
		-> denominacion varchar (30) not null,
		-> tutor varchar (30) not null
		-> );
```    
***Asignaación de FOREIGN KEY, en tabla alumnos.***
```
	alter table alumnos add FOREIGN KEY (idGrupo) references grupos(idGrupo);                                                           

	alter table alumnos add FOREIGN KEY (idEquipo) references equipos(idEquipo);
 ``` 
  
