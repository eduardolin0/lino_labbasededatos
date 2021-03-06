USE [Horario_Escolar]
GO
ALTER TABLE [dbo].[Materia] DROP CONSTRAINT [FK_Materia_Maestro]
GO
ALTER TABLE [dbo].[Materia] DROP CONSTRAINT [FK_Materia_Carrera]
GO
ALTER TABLE [dbo].[Horario] DROP CONSTRAINT [FK_Horario_Semana]
GO
ALTER TABLE [dbo].[Horario] DROP CONSTRAINT [FK_Horario_Materia]
GO
ALTER TABLE [dbo].[Horario] DROP CONSTRAINT [FK_Horario_Maestro]
GO
ALTER TABLE [dbo].[Alumno] DROP CONSTRAINT [FK_Alumno_Carrera]
GO
ALTER TABLE [dbo].[Acceso] DROP CONSTRAINT [FK_Acceso_Alumno]
GO
/****** Object:  Table [dbo].[Semana]    Script Date: 16/03/2019 03:34:42 a. m. ******/
DROP TABLE [dbo].[Semana]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 16/03/2019 03:34:42 a. m. ******/
DROP TABLE [dbo].[Materia]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 16/03/2019 03:34:42 a. m. ******/
DROP TABLE [dbo].[Maestro]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 16/03/2019 03:34:42 a. m. ******/
DROP TABLE [dbo].[Horario]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 16/03/2019 03:34:42 a. m. ******/
DROP TABLE [dbo].[Carrera]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 16/03/2019 03:34:42 a. m. ******/
DROP TABLE [dbo].[Alumno]
GO
/****** Object:  Table [dbo].[Acceso]    Script Date: 16/03/2019 03:34:42 a. m. ******/
DROP TABLE [dbo].[Acceso]
GO
USE [master]
GO
/****** Object:  Database [Horario_Escolar]    Script Date: 16/03/2019 03:34:42 a. m. ******/
DROP DATABASE [Horario_Escolar]
GO
/****** Object:  Database [Horario_Escolar]    Script Date: 16/03/2019 03:34:42 a. m. ******/
CREATE DATABASE [Horario_Escolar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Horario_Escolar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Horario_Escolar.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Horario_Escolar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Horario_Escolar_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Horario_Escolar] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Horario_Escolar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Horario_Escolar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Horario_Escolar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Horario_Escolar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Horario_Escolar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Horario_Escolar] SET ARITHABORT OFF 
GO
ALTER DATABASE [Horario_Escolar] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Horario_Escolar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Horario_Escolar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Horario_Escolar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Horario_Escolar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Horario_Escolar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Horario_Escolar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Horario_Escolar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Horario_Escolar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Horario_Escolar] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Horario_Escolar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Horario_Escolar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Horario_Escolar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Horario_Escolar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Horario_Escolar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Horario_Escolar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Horario_Escolar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Horario_Escolar] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Horario_Escolar] SET  MULTI_USER 
GO
ALTER DATABASE [Horario_Escolar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Horario_Escolar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Horario_Escolar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Horario_Escolar] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Horario_Escolar] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Horario_Escolar', N'ON'
GO
ALTER DATABASE [Horario_Escolar] SET QUERY_STORE = OFF
GO
USE [Horario_Escolar]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Horario_Escolar]
GO
/****** Object:  Table [dbo].[Acceso]    Script Date: 16/03/2019 03:34:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acceso](
	[IDAlumno] [int] NOT NULL,
	[ClaveAcceso] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 16/03/2019 03:34:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[IDAlumno] [int] NOT NULL,
	[NomAlumno] [varchar](50) NOT NULL,
	[ApMatAlumno] [varchar](50) NOT NULL,
	[ApPatAlumno] [varchar](50) NOT NULL,
	[IDCarrera] [int] NOT NULL,
	[Sexo] [char](1) NOT NULL,
	[FechaNac] [date] NOT NULL,
	[ClaveAcceso] [varchar](50) NOT NULL,
	[Promedio] [int] NOT NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[IDAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 16/03/2019 03:34:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[IDCarrera] [int] NOT NULL,
	[NomCarrera] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[IDCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 16/03/2019 03:34:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[IDHorario] [int] NOT NULL,
	[HoraInicio] [time](7) NOT NULL,
	[HoraFin] [time](7) NOT NULL,
	[IDDia] [int] NOT NULL,
	[IDAula] [int] NOT NULL,
	[IDMateria] [int] NOT NULL,
	[IDMaestro] [int] NOT NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[IDHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 16/03/2019 03:34:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestro](
	[IDMaestro] [int] NOT NULL,
	[NomMaestro] [varchar](50) NOT NULL,
	[ApPatAlumno] [varchar](50) NOT NULL,
	[ApMatAlumno] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Maestro] PRIMARY KEY CLUSTERED 
(
	[IDMaestro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 16/03/2019 03:34:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[IDMateria] [int] NOT NULL,
	[Materia] [varchar](50) NOT NULL,
	[IDCarrera] [int] NOT NULL,
	[IDSemestre] [int] NOT NULL,
	[IDMaestro] [int] NOT NULL,
 CONSTRAINT [PK_Materia] PRIMARY KEY CLUSTERED 
(
	[IDMateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semana]    Script Date: 16/03/2019 03:34:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semana](
	[IDDia] [int] NOT NULL,
	[Dia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Semana] PRIMARY KEY CLUSTERED 
(
	[IDDia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Alumno] ([IDAlumno], [NomAlumno], [ApMatAlumno], [ApPatAlumno], [IDCarrera], [Sexo], [FechaNac], [ClaveAcceso], [Promedio]) VALUES (1, N'Eduardo', N'Lino', N'De Leon', 1, N'M', CAST(N'1999-01-26' AS Date), N'lino123', 90)
INSERT [dbo].[Alumno] ([IDAlumno], [NomAlumno], [ApMatAlumno], [ApPatAlumno], [IDCarrera], [Sexo], [FechaNac], [ClaveAcceso], [Promedio]) VALUES (2, N'Panino', N'XD', N'ALV', 2, N'M', CAST(N'1999-03-22' AS Date), N'xdxd123', 90)
INSERT [dbo].[Carrera] ([IDCarrera], [NomCarrera]) VALUES (1, N'LSTI')
INSERT [dbo].[Carrera] ([IDCarrera], [NomCarrera]) VALUES (2, N'LCC')
INSERT [dbo].[Carrera] ([IDCarrera], [NomCarrera]) VALUES (3, N'LF')
INSERT [dbo].[Carrera] ([IDCarrera], [NomCarrera]) VALUES (4, N'LMAD')
INSERT [dbo].[Carrera] ([IDCarrera], [NomCarrera]) VALUES (5, N'LM')
INSERT [dbo].[Semana] ([IDDia], [Dia]) VALUES (1, N'Lunes')
INSERT [dbo].[Semana] ([IDDia], [Dia]) VALUES (2, N'Martes')
INSERT [dbo].[Semana] ([IDDia], [Dia]) VALUES (3, N'Miercoles')
INSERT [dbo].[Semana] ([IDDia], [Dia]) VALUES (4, N'Jueves')
INSERT [dbo].[Semana] ([IDDia], [Dia]) VALUES (5, N'Viernes')
ALTER TABLE [dbo].[Acceso]  WITH CHECK ADD  CONSTRAINT [FK_Acceso_Alumno] FOREIGN KEY([IDAlumno])
REFERENCES [dbo].[Alumno] ([IDAlumno])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Acceso] CHECK CONSTRAINT [FK_Acceso_Alumno]
GO
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Carrera] FOREIGN KEY([IDCarrera])
REFERENCES [dbo].[Carrera] ([IDCarrera])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Carrera]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_Horario_Maestro] FOREIGN KEY([IDMaestro])
REFERENCES [dbo].[Maestro] ([IDMaestro])
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_Horario_Maestro]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_Horario_Materia] FOREIGN KEY([IDMateria])
REFERENCES [dbo].[Materia] ([IDMateria])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_Horario_Materia]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_Horario_Semana] FOREIGN KEY([IDDia])
REFERENCES [dbo].[Semana] ([IDDia])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_Horario_Semana]
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Carrera] FOREIGN KEY([IDCarrera])
REFERENCES [dbo].[Carrera] ([IDCarrera])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Carrera]
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Maestro] FOREIGN KEY([IDMaestro])
REFERENCES [dbo].[Maestro] ([IDMaestro])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Maestro]
GO
USE [master]
GO
ALTER DATABASE [Horario_Escolar] SET  READ_WRITE 
GO
