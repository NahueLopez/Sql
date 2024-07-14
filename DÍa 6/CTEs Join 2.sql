WITH PrimerEpisodio AS (
SELECT serie_id, MIN(fecha_estreno) AS primer
FROM Episodios
GROUP BY serie_id
),

Titulos AS (
SELECT serie_id, titulo FROM Series
)

SELECT Titulos.titulo AS 'Título de la Serie',
        PrimerEpisodio.primer  AS 'fecha_primer_episodio'
FROM PrimerEpisodio
INNER JOIN Titulos
ON PrimerEpisodio.serie_id = Titulos.serie_id
ORDER BY PrimerEpisodio.primer