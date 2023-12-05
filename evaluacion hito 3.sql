create database evaluacion_procesual_h3

use evaluacion_procesual_h3;


create table campeonato (
    id_campeonato varchar(12) primary key not null,
    nombre_completo varchar(30) not null,
    sede varchar(20) not null
);
 

insert into campeonato (id_campeonato, nombre_completo, sede)
values ('camp-111','Campeonato Unifranz','El Alto');
insert into campeonato (id_campeonato, nombre_completo, sede)
values ('camp-222','Campeonato Unifranz','Cochabamba');

create table equipo (
id_equipo varchar(12) primary key not null,
   nombre_equipo varchar(30) not null,
   categoria varchar(8) not null,
   id_campeonato varchar(12) not null
   );
    insert into equipo (id_equipo,nombre_equipo,categoria,id_campenato)
values (equ-111,'Google','Varones',camp-111);
insert into equipo (id_equipo,nombre_equipo,categoria,id_campenato)
values (equ-222,'404 Not Found','Varones',camp-111);
insert into equipo (id_equipo,nombre_equipo,categoria,id_campenato)
values (equ-333,'girls unifranz','Mujeres',camp-111);

create table jugador (
    id_jugador varchar(12) primary key not null,
    nombres varchar(30) not null,
    apellido varchar(50) not null,
    ci varchar(15) not null,
    edad int not null,
    id_equipo varchar(12) not null,
    
);

insert into jugador (id_jugador, nombres, apellido, ci, edad, id_equipo)
values ('jug-111','Carlos','Villa','8997811LP','19','equ-222');
insert into jugador (id_jugador, nombres, apellido, ci, edad, id_equipo)
values ('jug-222','Pedro','Salas','8997822LP','20','equ-222');
insert into jugador (id_jugador, nombres, apellido, ci, edad, id_equipo)
values ('jug-333','Saul','Araj','8997833LP','21','equ-222');
insert into jugador (id_jugador, nombres, apellido, ci, edad, id_equipo)
values ('jug-444','Sandra','Solis','8997844LP');
insert into jugador (id_jugador, nombres, apellido, ci, edad, id_equipo)
values ('jug-555','Ana','Mica','8997855LP','23','E

SELECT jugador.nombres, jugador.apellido, jugador.edad, jugador.id_equipo, equipo.nombre
FROM jugador
INNER JOIN equipo ON jugador.id_equipo = equipo.id_jugador 
INNER JOIN campeonato ON jugador.id_campeonato = campeonato.id_campeonato
WHERE campeonato.sede = 'El Alto' AND jugador.edad <= 20;