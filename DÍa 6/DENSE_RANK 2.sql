SELECT  titulo,
        duracion,
        DENSE_RANK() OVER (ORDER BY duracion DESC) as ranking_por_duracion
FROM Episodios