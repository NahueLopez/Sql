-- Vista Materelizadas
-- Aloja la vista en el disco
-- MySql No soporta esta opcion

CREATE MATERIALIZED VIEW VistaEmpleadosProyecto AS 
SELECT Empleados.nombre, Proyectos.nombre AS Proyecto
FROM Empleados
JOIN AsignacionesDeProyectos ON Empleados.empleado_id = AsignacionesDeProyectos.empleado_id
JOIN Proyectos ON AsignacionesDeProyectos.proyecto_id = Proyectos.proyecto_id;

SELECT * FROM vistaempleadostecnologia