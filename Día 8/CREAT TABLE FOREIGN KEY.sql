-- Creación de la tabla AsignacionesDeProyectos
CREATE TABLE IF NOT EXISTS AsignacionesDeProyectos (
    asignacion_id INT AUTO_INCREMENT PRIMARY KEY,
    proyecto_id INT,
    empleado_id INT,
    horas_asignadas INT NOT NULL,
    FOREIGN KEY (proyecto_id) REFERENCES Proyectos(proyecto_id),
    FOREIGN KEY (empleado_id) REFERENCES Empleados(empleado_id)
);