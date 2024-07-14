-- Le agrega un numero que sera un orden en base a lo que pogamos en los ()
SELECT titulo,
		año_lanzamiento,
        ROW_NUMBER() OVER (ORDER BY año_lanzamiento DESC) AS orden_lanzamiento	
FROM series