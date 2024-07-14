-- Proyecto 10
-- Crear una vista llamada "VistaEmpleadosProyectos"
-- Debe ser una consulta que muestre el nombre y apelido del empledo junto con el proyecto al que eta asiganado
-- Tablas a utilizar Empleados, AsignacionesdeProyectos y Proyectos

CREATE VIEW VistaEmpleadosProyectos AS 
SELECt empleados.nombre AS nombre_empleado , empleados.apellido, proyectos.nombre AS nombre_proyecto
FROM asignacionesdeproyectos
JOIN empleados ON empleados.empleado_id = asignacionesdeproyectos.empleado_id
JOIN proyectos ON asignacionesdeproyectos.proyecto_id = proyectos.proyecto_id;

SELECT * FROM VistaEmpleadosProyectos;