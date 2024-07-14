SELECT episodios.temporada ,
       episodios.titulo ,
       episodios.rating_imdb ,
       ROW_NUMBER() OVER (PARTITION BY episodios.temporada ORDER BY episodios.rating_imdb DESC) AS "Ranking IMDb"
FROM episodios
WHERE episodios.serie_id = 2
ORDER BY episodios.temporada, "Ranking IMDb";
