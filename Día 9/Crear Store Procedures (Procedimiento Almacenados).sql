-- Procedimientos Almacenados
-- Bloques de codigo guardados en la db, para utilizarlos cuando se necesite
-- Permite encapsular codigo para utilizarlo luego

DELIMITER //
CREATE PROCEDURE AgregarEmpleado(IN _nombre VARCHAR(255), IN _apellido VARCHAR(255), IN _email VARCHAR(255), IN _depto_id INT)
BEGIN
	INSERT INTO Empleados(nombre,apellido,email,depto_id) VALUES(_nombre, _apellido, _email, _depto_id);
END //

DELIMITER ;