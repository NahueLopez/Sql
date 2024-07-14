-- Selecciono lo que quiero ver 

-- Todo a mayusucla
SELECT UPPER(titulo) AS Titulo_Mayuscula FROM Series;

-- Todo a minuscula
SELECT LOWER(nombre) AS nombre_minuscula FROM ACtores;

-- Concadeno las dos columnas y en este caso agrego parentesis
SELECT CONCAT(titulo, '(', año_lanzamiento, ')' ) AS Titulo_Año From Series;

-- EXtrae una parte especifica de una caena de texto. En este caso solo toma 5 caracteres
SELECT SUBSTRING(titulo, 1,5) AS Extracto_Titulo FROM episodios;

-- Trae los 3 primeros caracteres o los 3 ultimos
SELECT titulo,
		LEFT(titulo,3) AS Inicio_Titulo,
        RIGHT(titulo,3) AS Fin_Titulo
From series;