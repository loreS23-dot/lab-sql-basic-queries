USE sakila;

-- 1. Mostrar todas las tablas
SHOW TABLES;

-- 2.1 Todos los actores
SELECT * FROM actor;

-- 2.2 Todas las películas
SELECT * FROM film;

-- 2.3 Todos los clientes
SELECT * FROM customer;

-- 3.1 Títulos de todas las pelis
SELECT title
FROM film;

-- 3.2 Idiomas, con alias 'language'
SELECT name AS language
FROM language;

-- 3.3 Nombres de los empleados
SELECT first_name
FROM staff;

-- 4. Años de estreno únicos
SELECT DISTINCT release_year
FROM film;

-- 5.1 Número de tiendas
SELECT COUNT(*) AS number_of_stores
FROM store;

-- 5.2 Número de empleados
SELECT COUNT(*) AS number_of_employees
FROM staff;

-- 5.3 (a) Películas distintas disponibles para alquilar
SELECT COUNT(DISTINCT film_id) AS films_available_for_rent
FROM inventory;

-- 5.3 (b) Películas que han sido alquiladas al menos una vez
SELECT COUNT(DISTINCT i.film_id) AS films_rented
FROM inventory i
JOIN rental r ON i.inventory_id = r.inventory_id;

-- 5.4 Apellidos distintos de actores
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;

-- 6. 10 películas más largas
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1 Actores con nombre SCARLETT
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 Pelis con ARMAGEDDON en el título y duración > 100
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

-- 7.3 Pelis con Behind the Scenes
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
