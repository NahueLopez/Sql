-- Sub consulta para identificar los tres géneros más populares (en función de la cantidad de series)
-- Consulta principal para cada género, que identifica el título, año de lanzamiento y rating promedio de la serie

SELECT 
    Series.titulo AS 'Título de la Serie', 
    Series.año_lanzamiento AS 'Año de Lanzamiento', 
    Series.genero AS 'Género', 
    AVG(Episodios.rating_imdb) AS 'Rating Promedio IMDb'
FROM 
    Series
JOIN 
    Episodios ON Series.serie_id = Episodios.serie_id
WHERE 
    Series.genero IN (SELECT genero FROM (
										  SELECT genero, COUNT(*) AS cantidad_de_series
										  FROM Series 
										  GROUP BY genero 
										  ORDER BY cantidad_de_series DESC
										  LIMIT 3) 
						AS top3)
GROUP BY 
    Series.serie_id
ORDER BY 
    'Rating Promedio IMDb' DESC;
