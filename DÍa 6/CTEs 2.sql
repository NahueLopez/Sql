WITH Años AS (
SELECT año_lanzamiento, COUNT(año_lanzamiento) AS total_series
FROM series
WHERE genero IN ('Ciencia ficción')
GROUP BY año_lanzamiento
)

SELECT * FROM Años