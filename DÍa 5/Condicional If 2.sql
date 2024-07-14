SELECT nombre, 
		YEAR(fecha_nacimiento) AS año_nacimiento,
	if (fecha_nacimiento > 2000, "Joven", "Viejo") AS "Categoria de actores"
FROM actores