-- Triggers o Disparadores
-- Son acciones automáticas que se ejecutan luego de que ocurra un evento específico

DELIMITER $$

CREATE TRIGGER RegistrarNuevoEmpleado
AFTER INSERT ON Empleados
FOR EACH ROW
BEGIN
	INSERT INTO LogEmpleados (empleado_id, fecha_registro) VALUES (NEW.empleado_id, NOW());
END$$

DELIMITER ;

INSERT INTO Empleados (nombre, apellido, email) VALUES ("Nahuela", "Lopeza","nahuela.lopez@email.com");

SELECT * FROM logempleados;