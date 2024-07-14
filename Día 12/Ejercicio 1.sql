-- Reporte de cada empleado y su cantidad de horas en cada proyecto

SELECT empleados.nombre AS "Nombre Empleado", 
        empleados.apellido AS "Apellido Empleado", 
        proyectos.nombre AS "Nombre Proyecto",
        asignacionesdeproyectos.horas_asignadas AS "Horas Asignadas"
FROM empleados
JOIN asignacionesdeproyectos ON empleados.empleado_id = asignacionesdeproyectos.empleado_id
JOIN proyectos ON asignacionesdeproyectos.proyecto_id = proyectos.proyecto_id
ORDER BY empleados.nombre AND asignacionesdeproyectos.horas_asignadas DESC;


-- CON CTEs

WITH NombresEmpleados AS (
    SELECT nombre, apellido, empleado_id
    FROM empleados
),

Horas AS (
    SELECT empleado_id, proyecto_id, horas_asignadas
    FROM asignacionesdeproyectos
),

NombresProyectos AS (
    SELECT nombre, proyecto_id
    FROM proyectos
)

SELECT NombresEmpleados.nombre AS "Nombre Empleado",
       NombresEmpleados.apellido AS "Apellido Empleado",
       NombresProyectos.nombre AS "Nombre Proyecto",
       Horas.horas_asignadas AS "Horas Asignadas"
FROM NombresEmpleados
JOIN Horas ON NombresEmpleados.empleado_id = Horas.empleado_id
JOIN NombresProyectos ON Horas.proyecto_id = NombresProyectos.proyecto_id
ORDER BY NombresEmpleados.nombre, Horas.horas_asignadas DESC;


