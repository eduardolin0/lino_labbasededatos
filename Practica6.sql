--- Selects Avanzaados

SELECT (Alumno.idAlumno),(Alumno.nomCompletoAlumno), (Carrera.idCarrera), (Carrera.nomCarrera) FROM Alumno JOIN Carrera ON Alumno.idCarrera = Carrera.idCarrera 

SELECT (Maestro.idMaestro), (Maestro.nomCompletoMaestro), (Materia.idMateria),(Materia.nomMateria) FROM Maestro JOIN Materia ON Maestro.idMaestro = Materia.idMaestro

SELECT (Materia.idMateria), (Materia.nomMateria), (Carrera.idCarrera), (Carrera.nomCarrera) FROM Materia JOIN Carrera ON Materia.idCarrera = Carrera.idCarrera

SELECT (Materia.idMateria), (Materia.nomMateria), (Carrera.idCarrera), (Carrera.nomCarrera) FROM Materia JOIN Carrera ON Materia.idCarrera = Carrera.idCarrera WHERE Carrera.idCarrera = 1

SELECT (SELECT COUNT(*) FROM Alumno WHERE idCarrera = 1) AS Alumnos_LSTI, (SELECT COUNT(*) FROM Alumno WHERE idCarrera = 2) AS Alumnos_CC, (SELECT COUNT(*) FROM Alumno WHERE idCarrera = 3) AS Alumnos_LF, (SELECT COUNT(*) AS 'Alumnos LM' FROM Alumno WHERE idCarrera = 4) AS Alumnos_LM, (SELECT COUNT(*) FROM Alumno WHERE idCarrera = 5) AS Alumnos_LMAD, (SELECT COUNT(*) FROM Alumno WHERE idCarrera = 6) AS Alumnos_LA

SELECT (SELECT COUNT(*) FROM Materia WHERE idCarrera = 1) AS Materias_LSTI, (SELECT COUNT(*) FROM Materia WHERE idCarrera = 2) AS Materias_CC, (SELECT COUNT(*) FROM Materia WHERE idCarrera = 3) AS Materias_LF, (SELECT COUNT(*) AS 'Alumnos LM' FROM Materia WHERE idCarrera = 4) AS Materias_LM, (SELECT COUNT(*) FROM Materia WHERE idCarrera = 5) AS Materias_LMAD, (SELECT COUNT(*) FROM Materia WHERE idCarrera = 6) AS Materias_LA

SELECT mat.*, mae.idMaestro, mae.nomCompletoMaestro FROM Materia mat
LEFT JOIN Maestro mae on mat.idMaestro = mae.idMaestro

SELECT mat.*, mae.idMaestro, mae.nomCompletoMaestro, car.idCarrera, car.nomCarrera, car.planEstudios FROM Materia mat
LEFT JOIN Maestro mae on mat.idMaestro = mae.idMaestro
LEFT JOIN Carrera car on mat.idCarrera = car.idCarrera

--- 1. SELECT BASICOS

SELECT * FROM Alumno WHERE sexoAlumno = 'm'

SELECT COUNT(*) AS 'Materias LSTI' FROM Materia WHERE IDCarrera = 1

SELECT COUNT(*) AS 'Materias LCC' FROM Materia WHERE IDCarrera = 2

SELECT COUNT(*) AS 'Materias LF' FROM Materia WHERE IDCarrera = 3

SELECT COUNT(*) AS 'Materias LM' FROM Materia WHERE IDCarrera = 4

SELECT COUNT(*) AS 'Materias LNAD' FROM Materia WHERE IDCarrera = 5

SELECT COUNT(*) AS 'Materias LA' FROM Materia WHERE IDCarrera = 6

SELECT COUNT(*) AS 'Total Materias' FROM Materia

SELECT COUNT(*) FROM Materia WHERE IDCarrera = 6

SELECT COUNT(*) FROM Maestro

SELECT * FROM Alumno WHERE estatusAlumno = 'A'

SELECT COUNT(*) AS 'Alumnos dados de baja' FROM Alumno WHERE estatusAlumno = 'B'
