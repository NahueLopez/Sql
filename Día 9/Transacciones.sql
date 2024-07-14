-- Transacciones
-- Unidad unica de trabajo
-- Si una tiene exito, todas las modificaciones de los datos realizadas durante l transaccion se confirman
-- Si una tiene error y debe cancelarse o revertise, se borran todas las modificaciones de los datos

-- Se rigen por los principios A.C.I.D
-- Atomicidad
-- Coherencia
-- Aislamiento
-- Durabilidad

BEGIN;
SAVEPOINT PreValidacion;
INSERT INTO AsignacionesDeProyectos (proyecto_id, empleado_id, horas_asignadas) VALUES (5,1,10);
INSERT INTO AsignacionesDeProyectos (proyecto_id, empleado_id, horas_asignadas) VALUES (5,2,15);
-- Mas inserciones si se necesitan
-- Codigo validar total horas
-- Si el total exede, podemos revertir nuestro SAVEPOINT
ROLLBACK TO PreValidacion;