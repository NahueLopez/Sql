-- Permite ver en ranking en base a lo que seleccionamos pero no deja saltos 
SELECT titulo,
		rating_imdb,
        DENSE_RANK() OVER(ORDER BY rating_imdb DESC) AS ranking_imdb
FROM episodios
