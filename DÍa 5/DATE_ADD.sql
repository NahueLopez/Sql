SELECT fecha_estreno,
DATE_ADD(fecha_estreno, INTERVAL 30 DAY) 
FROM episodios

-- Le agrega 30 dias a la fecha, podemos hacerlo con mes o año! y si le ponemos signo de - le restamos!