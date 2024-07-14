SELECT * FROM episodios
WHERE serie_id = (SELECT serie_id FROM series WHERE titulo = "The Office")