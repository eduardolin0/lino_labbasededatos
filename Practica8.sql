--- 1. Se crea la tabla logdelsistema para guardar TODO lo que los trigger lo manipulen.
  CREATE TABLE logdelsistema(
     idMovimiento INT PRIMARY KEY,
	 Movimiento varchar(50),
	 TablaAfectada varchar(50),
     fecha DATETIME,
	 usuariosql varchar(30)
  );
  GO

  DROP TABLE logdelsistema
 --- 2. Se crea el primer trigger en caso de insertar datos.
    CREATE TRIGGER tr_log_ins ON Alumno
    for INSERT
    AS
    BEGIN
		set nocount on;
		INSERT INTO logdelsistema VALUES((SELECT COUNT(*) FROM logdelsistema) + 1,'Se agregó el ID' + STR((SELECT idAlumno FROM inserted)),'Alumno',GETDATE(),SYSTEM_USER);
    END
GO
 --- 3. Se crea el segundo trigger en caso de ELIMINAR datos.

  CREATE TRIGGER tr_log_del ON Alumno
    for DELETE
    AS
    BEGIN
		set nocount on;
		INSERT INTO logdelsistema VALUES((SELECT COUNT(*) FROM logdelsistema) + 1,'Se ELIMINÓ el ID' + STR((SELECT idAlumno FROM deleted)),'Alumno',GETDATE(),system_user);
    END
GO
 --- 4. Se crea el tercer trigger en caso de ACTUALIZAR datos.
  CREATE TRIGGER tr_log_upd ON Alumno
    for UPDATE
    AS
    BEGIN
		set nocount on;
		INSERT INTO logdelsistema VALUES((SELECT COUNT(*) FROM logdelsistema) + 1,'Se ACTUALIZÓ el ID' + STR((SELECT idAlumno FROM inserted)),'Alumno',GETDATE(),system_user);
    END
GO
--- 5. Creación de los procedimientos almacenados para realizar los reportes de la práctica anterior.

CREATE PROCEDURE sp_AlumnosAlta
AS
SELECT * FROM AlumnosAlta
GO

EXEC sp_AlumnosAlta
GO

CREATE PROCEDURE sp_AlumnosBaja
AS
SELECT * FROM AlumnosBaja
GO

EXEC sp_AlumnosBaja
GO

CREATE PROCEDURE sp_AlumnosCarrera
AS
SELECT * FROM AlumnosCarrera
GO

EXEC sp_AlumnosCarrera
GO

CREATE PROCEDURE sp_MaestroMateria
AS
SELECT * FROM MaestroMateria
GO

EXEC sp_MaestroMateria
GO

CREATE PROCEDURE sp_MateriaCarrera
AS
SELECT * FROM MateriaCarrera
GO

EXEC sp_MateriaCarrera
GO

CREATE PROCEDURE sp_MateriasLSTI
AS
SELECT * FROM MateriasLSTI
GO

EXEC sp_MateriasLSTI
GO

CREATE PROCEDURE sp_NumMateriasCarrera
AS
SELECT * FROM NumMateriasCarrera
GO

EXEC sp_NumMateriasCarrera
GO

CREATE PROCEDURE sp_Vista1
AS
SELECT * FROM Vista1
GO

EXEC sp_Vista1
GO
