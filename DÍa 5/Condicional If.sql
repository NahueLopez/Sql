SELECT titulo, rating_imdb,
	if (rating_imdb >= 8, "Alto", "Bajo") AS "Categoria de Rating"
FROM episodios