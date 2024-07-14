-- Crear un procedimiento almacenado llamado "AgregarDepartamento"
-- Debe aceptar de entrada dos parametros: nombre y ubicacion

DELIMITER //
CREATE PROCEDURE AgregarDepartamento(IN _nombre VARCHAR(255), IN _ubicacion VARCHAR(255) )
BEGIN
	INSERT INTO departamentos(nombre,ubicacion) VALUES(_nombre, _ubicacion);
END //

DELIMITER ;

CALL AgregarDepartamento("Juegos","Edificio Relax");

SELECT * FROM departamentos;