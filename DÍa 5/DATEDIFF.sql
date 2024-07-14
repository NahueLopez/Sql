SELECT *,
DATEDIFF(CURDATE(),fecha_estreno ) AS diasdeestreno
FROM episodios

-- Diferencia entre las 2 fechas