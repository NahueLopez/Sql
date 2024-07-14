-- Pregunta 1
-- ¿Quien es el actor o actriz que ha participado en la mayor cantidad de series?
SELECT actores.nombre, actuaciones.actor_id, COUNT(actuaciones.actor_id) AS numero_series
FROM actuaciones
INNER JOIN actores ON actores.actor_id = actuaciones.actor_id
GROUP BY actuaciones.actor_id
ORDER BY numero_series DESC


-- Pregunta 2
-- ¿Cual es la serie con mejor rating promedio segun imdb?
SELECT series.titulo,episodios.serie_id, AVG(episodios.rating_imdb) AS Promedio_rating
FROM episodios
INNER JOIN series ON episodios.serie_id = series.serie_id
GROUP BY episodios.serie_id
ORDER BY Promedio_rating DESC




-- Pregunta 3
-- ¿Cual es el episodio con la duración más larga?
SELECT series.titulo,episodios.serie_id, MAX(episodios.duracion) AS duracion
FROM episodios
INNER JOIN series ON episodios.serie_id = series.serie_id
GROUP BY episodios.serie_id
ORDER BY duracion DESC




