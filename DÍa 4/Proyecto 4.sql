-- ¿Qué géneros son más prevalentes en la base de datos NetflixDB? 
-- Genera una lista de los distintos géneros y la cantidad de series por cada uno.

SELECT genero, COUNT(genero) AS Conteo
FROM series
GROUP BY genero
ORDER BY Conteo DESC


-- ¿Cuáles son las tres series con mayor rating IMDB y cuántos episodios tienen? 
-- Considera usar un JOIN para combinar la información de las tablas de series y episodios.

SELECT series.titulo, episodios.titulo, episodios.rating_imdb, AVG(episodios.rating_imdb) AS Promedio
FROM series
INNER JOIN episodios
ON series.serie_id = episodios.episodio_id
GROUP BY episodios.episodio_id
ORDER BY Promedio
Limit 3


-- ¿Cuál es la duración total de todos los episodios para la serie "Stranger Things"? 
-- Este análisis te permitirá entender el compromiso temporal necesario para ver una serie completa.

SELECT SUM(episodios.duracion) AS duracion_total
FROM series 
INNER JOIN episodios
ON  series.serie_id = episodios.episodio_id  
WHERE series.titulo = "Stranger Things"