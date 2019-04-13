CREATE VIEW AlumnosCarrera
AS
SELECT (Alumno.idAlumno),(Alumno.nomCompletoAlumno), (Carrera.idCarrera), (Carrera.nomCarrera) FROM Alumno JOIN Carrera ON Alumno.idCarrera = Carrera.idCarrera
GO

CREATE VIEW MaestroMateria
AS
SELECT (Maestro.idMaestro), (Maestro.nomCompletoMaestro), (Materia.idMateria),(Materia.nomMateria) FROM Maestro JOIN Materia ON Maestro.idMaestro = Materia.idMaestro
GO

CREATE VIEW MateriaCarrera
AS
SELECT (Materia.idMateria), (Materia.nomMateria), (Carrera.idCarrera), (Carrera.nomCarrera) FROM Materia JOIN Carrera ON Materia.idCarrera = Carrera.idCarrera
GO

CREATE VIEW MateriasLSTI
AS
SELECT (Materia.idMateria), (Materia.nomMateria), (Carrera.idCarrera), (Carrera.nomCarrera) FROM Materia JOIN Carrera ON Materia.idCarrera = Carrera.idCarrera WHERE Carrera.idCarrera = 1
GO

CREATE VIEW NumMateriasCarrera
AS
SELECT (SELECT COUNT(*) FROM Alumno WHERE idCarrera = 1) AS Alumnos_LSTI, (SELECT COUNT(*) FROM Alumno WHERE idCarrera = 2) AS Alumnos_CC, (SELECT COUNT(*) FROM Alumno WHERE idCarrera = 3) AS Alumnos_LF, (SELECT COUNT(*) AS 'Alumnos LM' FROM Alumno WHERE idCarrera = 4) AS Alumnos_LM, (SELECT COUNT(*) FROM Alumno WHERE idCarrera = 5) AS Alumnos_LMAD, (SELECT COUNT(*) FROM Alumno WHERE idCarrera = 6) AS Alumnos_LA
GO

CREATE VIEW MateriaMaestro
AS
SELECT mat.*, mae.idMaestro, mae.nomCompletoMaestro FROM Materia mat
LEFT JOIN Maestro mae on mat.idMaestro = mat.idMaestro
GO

CREATE VIEW PlanEstudiosMaestro
AS
SELECT mat.*, mae.idMaestro, mae.nomCompletoMaestro, car.idCarrera, car.nomCarrera, car.planEstudios FROM Materia mat
LEFT JOIN Maestro mae on mat.idMaestro = mae.idMaestro
LEFT JOIN Carrera car on mat.idCarrera = car.idCarrera
GO

CREATE VIEW AlumnosBaja
AS 
SELECT COUNT(*) AS 'Alumnos dados de baja' FROM Alumno WHERE estatusAlumno = 'B'
GO

CREATE VIEW AlumnosAlta
AS
SELECT * FROM Alumno WHERE estatusAlumno = 'A'
GO
