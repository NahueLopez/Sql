SELECT titulo, año_lanzamiento,
        ROW_NUMBER() OVER (ORDER BY año_lanzamiento DESC) AS clasificacion_global
FROM Series
