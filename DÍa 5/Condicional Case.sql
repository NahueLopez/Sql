SELECT titulo, año_lanzamiento,
		CASE
			WHEN año_lanzamiento >= 2020 THEN "Nueva"
            WHEN año_lanzamiento  BETWEEN 2010 AND 2019 THEN "Clasica"
            ELSE "Antigua"
            END AS Categoria
FROM series