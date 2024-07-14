WITH OrdenSeries AS (
-- Le agrega un numero que sera un orden en base a lo que pogamos en los ()
SELECT titulo,
		año_lanzamiento,
        ROW_NUMBER() OVER (ORDER BY año_lanzamiento DESC) AS orden_lanzamiento	
FROM series
)

-- Nos muestra los 3 primeros resultados
SELECT * 
FROM OrdenSeries
WHERE orden_lanzamiento IN (1,2,3)
