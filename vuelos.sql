create database aeropuertos;

-- Exploracion basica de la tabla
select nombre_aeropuerto
from aeropuertos;

select nombre_aeropuerto, pais, trafico_anual_pasajeros
from aeropuertos;

-- Filtros simples
select nombre_aeropuerto, ciudad , pais
from aeropuertos 
where pais = 'Argentina';

select longitud_pista_m, nombre_aeropuerto, ciudad, pais
from aeropuertos
where longitud_pista_m > 3500;

select nombre_aeropuerto, ciudad, pais, cantidad_terminales
from aeropuertos
where cantidad_terminales > 2;

-- Ordenamiento de resultados
select nombre_aeropuerto, ciudad, pais, trafico_anual_pasajeros
from aeropuertos
order by trafico_anual_pasajeros desc;

select nombre_aeropuerto, ciudad, pais, longitud_pista_m
from aeropuertos
order by longitud_pista_m desc;

select nombre_aeropuerto, ciudad, pais, vuelos_promedio_dia
from aeropuertos
order by vuelos_promedio_dia desc
limit 5;

-- Filtros multiples
select nombre_aeropuerto, ciudad, pais, trafico_anual_pasajeros, vuelos_promedio_dia
from aeropuertos
where trafico_anual_pasajeros > 30000000
and vuelos_promedio_dia > 900
order by trafico_anual_pasajeros;

select nombre_aeropuerto, ciudad, pais, porcentaje_vuelos_ifr
from aeropuertos
where porcentaje_vuelos_ifr > 97
order by porcentaje_vuelos_ifr;

select nombre_aeropuerto, ciudad, pais, longitud_pista_m, altitud_msnm
from aeropuertos 
where longitud_pista_m > 3800
and altitud_msnm > 500;

-- Agrupaciones por pais
select  pais, count(pais) as cantidad_de_aeropuertos
from aeropuertos
group by pais;

select pais, avg(trafico_anual_pasajeros) as promedio_pasajeros
from aeropuertos
group by pais
order by promedio_pasajeros desc;

-- Filtros de resultados agregados
select pais, avg(trafico_anual_pasajeros) as promedio_pasajeros
from aeropuertos
where promedio_pasajeros > 30000000
group by pais
order by promedio_pasajeros desc
;

-- Analisis de operaciones IFR 
select nombre_aeropuerto, ciudad, pais, porcentaje_vuelos_ifr
from aeropuertos
where porcentaje_vuelos_ifr > 97;

-- Aeropuerto con mayor trafico anual 
select nombre_aeropuerto, ciudad, pais, trafico_anual_pasajeros
from aeropuertos
order by trafico_anual_pasajeros desc
limit 1;

-- Trafico anual de pasajeros
select pais, sum(trafico_anual_pasajeros) as cantidad_pasajeros
from aeropuertos
group by pais
order by cantidad_pasajeros desc;

-- Top 3 aeropuertos con mas trafico 
select pais, trafico_anual_pasajeros
from aeropuertos
order by trafico_anual_pasajeros desc
limit 3;

-- Mayor porcentaje IFR por pais 
select pais, max(porcentaje_vuelos_ifr)
from aeropuertos
group by pais;

-- Aeropuertos con mas de 500 vuelos diarios
select pais, vuelos_promedio_dia 
from aeropuertos
where vuelos_promedio_dia > 500;

