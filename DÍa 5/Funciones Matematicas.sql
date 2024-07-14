-- Redondea a 0 decimales
SELECT titulo, duracion/60.0 AS Horas_Completa, ROUND(duracion/60.0, 0) AS Horas_Completa_Redondeado FROM Episodios;

-- Redondea al numero mas cercado pero para arriba
SELECT titulo, duracion, CEILING(duracion/60.0) AS Horas_Completas FROM Episodios;

-- Redondea al numero mas cercado pero para abajo
SELECT titulo, duracion, FLOOR(duracion/60) AS Horas_Completas FROM episodios;