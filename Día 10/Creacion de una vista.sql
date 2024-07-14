-- Vista
-- Es una tabla virtual cuyo contenido esta definido por una consulta
-- Tiene columnas , filas de datos
-- SE actualiza automaticamente

-- Beneficios
-- Simplifica consultas complejas
-- Mejora la seguridad
-- Ayuda en la cosistencia de la db

CREATE VIEW VistaEmpleadosTecnologia AS 
SELECT nombre,apellido, email
FROM Empleados
WHERE depto_id = 1;


SELECT * FROM vistaempleadostecnologia