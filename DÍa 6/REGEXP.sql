-- Nos traera lo que tenga esa palabra en algun lado de la descripcion en este ejemplo
SELECT  titulo,
        descripcion
FROM series
WHERE descripcion REGEXP '(?i)londres'