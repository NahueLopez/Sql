-- Permite ver en ranking en base a lo que seleccionamos!
SELECT 
	titulo,
    rating_imdb,
    RANK() OVER(ORDER BY rating_imdb DESC) AS ranking_imdb
FROM episodios