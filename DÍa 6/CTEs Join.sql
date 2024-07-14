WITH ListaEpisodios AS (
SELECT serie_id, episodio_id, titulo FROM episodios
),

ListaSeries AS (
SELECT serie_id, descripcion FROM series
)

SELECT * FROM ListaEpisodios 
LEFT JOIN ListaSeries
ON ListaEpisodios.serie_id = ListaSeries.serie_id