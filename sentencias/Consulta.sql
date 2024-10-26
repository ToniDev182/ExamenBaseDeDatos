ALTER TABLE productos ADD COLUMN codigo INT(10); 

ALTER TABLE productos MODIFY codigo VARCHAR (19);

ALTER TABLE productos DROP COLUMN codigo; 

ALTER TABLE productos RENAME codigo TO codigoempleado; 

DELETE FROM productos WHERE codigo = 8; 

DROP TABLE produtos; 

SELECT * 
FROM productos; 

SELECT codigo, nombre
FROM productos
ORDER BY nombre; 

SELECT nombre, precio
FROM productos 
ORDER BY nombre DESC; 

SELECT *
FROM productos
WHERE fecha = '2007-11-03';

SELECT nombre
FROM productos 
WHERE fecha = '2007-11-03'
ORDER BY precio DESC; 

SELECT nombre
FROM productos 
WHERE precio < 20
AND fecha = '2007-11-02';

SELECT distinct nombre
FROM productos 
WHERE precio < 20
AND fecha = '2007-11-02';

SELECT codigo
FROM producto 
WHERE fecha '2007-11-03'
AND precio <= 20;

SELECT distinct codigo
FROM producto 
WHERE fecha '2007-11-03';
AND precio <= 20;

SELECT nombre 
FROM productos 
WHERE NOT fecha = '2007-11-03';

SELECT nombre 
FROM productos 
WHERE NOT fecha = '2007-11-03'
OR precio <=20;

SELECT nombre 
FROM productos 
WHERE NOT fecha = '2007-11-03'
OR precio >= 20; 

UPDATE producto 
SET nombre = 'silla_carrito', precio = 25
WHERE codigo = 23;

DELETE FROM productos 
WHERE nombre LIKE 'silla%';

SELECT COUNT (*) AS totalproductos
FROM productos;

SELECT COUNT (*) AS productosfecha
FROM productos 
WHERE fehca = '2007-11-03';

SELECT fecha COUNT (*) AS productosfecha
FROM productos 
GROUP BY fecha; 

SELECT AVG(precio) AS precio medio
FROM productos 

SELECT *
FROM productos
ORDER BY precio
LIMIT 1; 


CREATE TABLE comercial ( 
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
apellido1 VARCHAR(100) NOT NULL,
apellido2 VARCHAR(100) NOT NULL,
ciudad VARCHAR(100) NOT NULL, 
categoria INT UNSIGNED
);

CREATE TABLE comercial (
id IN UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
apellido1 VARCHAR(100) NOT NULL,
apellido2 VARCHAR(100) NOT NULL,
ciudad VARCHAR(100),
comision INT UNSIGNED
);

CREATE TABLE pedido (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
total DOUBLE NOT NULL,
fecha DATE, 
id_pedido INT UNSIGNED NOT NULL, 
id_comercial INT UNSIGNED NOT NULL,
FOREIGN KEY (id_comercial) REFERENCES comercial(id),
FOREIGN KEY (id_pedido) REFERENCES pedido(id)
); 


SELECT *
FROM actores
ORDER BY apellido 

SELECT UPPER (CONCAT(first_name), ' ', (last_name)) AS "Nombre del actor"
FROM Actores; -- upper es para poner todo en mayusculas
					-- concat es para combinar 

SELECT *
FROM actores
WHERE nombre = 'Scarlett'

SELECT nombre, apellidos
FROM actores
WHERE nombre like '%o%'
ORDER BY nombre DESC;

SELECT *
FROM actores
WHERE NOT nombre LIKE '%A%' OR apellido LIKE '%O%'
ORDER BY apellido, nombre;  

SELECT nombre, apellido 
FROM actores
WHERE SUBSTRING (nombre,3,1) = 'B';

SELECT nombre, apellido
FROM actores
WHERE nombre LIKE '%o%o%'AND apellido LIKE '%i%'
ORDER BY apellido; 

SELECT apellido COUNT (*)  AS cantidadapellidos
FROM actor 
GROUP BY apellido;

SELECT apellido, COUNT(*) AS cantidad 
FROM actor 
GROUP BY apellido 
HAVING COUNT(*) >= 2;

SELECT *
FROM ciudades 
WHERE nombre LIKE 'a%'
ORDER BY nombre; 

SELECT *
FROM ciudades 
WHERE nombre LIKE '%S'
ORDER BY nombre;

SELECT *
FROM ciudades
WHERE country = 61; 

SELECT * 
FROM ciudades 
WHERE nombre = 'spain';

SELECT * 
FROM ciudades 
WHERE nombre LIKE '% %'; 

-- Código de paises que tengan 10 o más ciudades 
-- ordenados por número de ciudades.
-- Llama al código de país “CODIGO” y al número 
-- de ciudades “TOTAL”.
-- ///////////////////////////////
-- selecciona el codigo del pais y cuenta
-- el numero de ciudades en ese pais
SELECT pais.codigo_pais AS codigo, COUNT(ciudades.ciudad_id) AS total
-- especifica de que tabla se cogen los datos
FROM pais 
-- Realiza una unión entre las tablas 'pais' y 'ciudades'
-- utilizando la columna 'id' de 'paises' y 'paisID' de 
-- 'ciudades'.
JOIN ciudades ON pais.pais_id = ciudades.pais_id 
-- Agrupa los resultados por el campo 'id' de 'paises'.
GROUP BY pais.pais_id
-- muestra los resultados con al menos 10 ciudades
HAVING COUNT(ciudades.ciudad_id) >= 10
-- Ordena los resultados por el total de ciudades en orden ascendente.
ORDER BY total 

SELECT *
FROM peliculas 
WHERE duracion BETWEEN 80 AND 100;  



