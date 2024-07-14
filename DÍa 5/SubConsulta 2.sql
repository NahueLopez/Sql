SELECT titulo
FROM Series
WHERE serie_id IN (SELECT serie_id FROM Episodios WHERE rating_imdb > 8)