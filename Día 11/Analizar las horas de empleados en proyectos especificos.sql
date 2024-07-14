-- Analizar las horas de empleados en proyectos especificos
WITH HorasEmpleado AS (
	SELECT empleado_id, SUM(horas_asignadas) AS TotalHoras
	FROM AsignacionesdeProyectos
    GROUP BY empleado_id
)

SELECT E.nombre, E.apellido, H.TotalHoras
FROM Empleados E
JOIN HorasEmpleado H ON E.empleado_id = H.empleado_id
ORDER BY H.TotalHoras DESC

