USE [master]
GO
/****** Object:  Database [pav1]    Script Date: 21/10/2018 15:46:15 ******/
CREATE DATABASE [pav1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pav1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\pav1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pav1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\pav1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [pav1] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pav1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pav1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pav1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pav1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pav1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pav1] SET ARITHABORT OFF 
GO
ALTER DATABASE [pav1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pav1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pav1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pav1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pav1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pav1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pav1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pav1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pav1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pav1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pav1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pav1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pav1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pav1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pav1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pav1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pav1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pav1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [pav1] SET  MULTI_USER 
GO
ALTER DATABASE [pav1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pav1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pav1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pav1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pav1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [pav1] SET QUERY_STORE = OFF
GO
USE [pav1]
GO
/****** Object:  Table [dbo].[Calificaciones]    Script Date: 21/10/2018 15:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificaciones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dias]    Script Date: 21/10/2018 15:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dias](
	[id] [int] NULL,
	[nombre] [varchar](50) NULL,
	[number] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evento]    Script Date: 21/10/2018 15:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evento](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormatoAudio]    Script Date: 21/10/2018 15:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormatoAudio](
	[id] [int] NULL,
	[nombre] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormatoVideo]    Script Date: 21/10/2018 15:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormatoVideo](
	[id] [int] NULL,
	[nombre] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funciones]    Script Date: 21/10/2018 15:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funciones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_pelicula] [int] NULL,
	[fecha_funcion] [date] NULL,
	[horario_comienzo] [time](7) NULL,
	[horario_fin] [time](7) NULL,
	[dia] [int] NULL,
	[id_formato] [int] NULL,
	[id_audio] [int] NULL,
	[id_sala] [int] NULL,
	[stock_tickets] [int] NULL,
	[id_evento] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 21/10/2018 15:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaisOrigen]    Script Date: 21/10/2018 15:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaisOrigen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 21/10/2018 15:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pelicula](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo_original] [varchar](50) NULL,
	[titulo_para_presentar] [varchar](50) NULL,
	[duracion_min] [int] NULL,
	[argumento] [varchar](500) NULL,
	[id_calificacion] [int] NULL,
	[id_paisdeorigen] [int] NULL,
	[url_image] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Precio]    Script Date: 21/10/2018 15:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Precio](
	[id] [int] NULL,
	[nombre] [varchar](50) NULL,
	[precio] [float] NULL,
	[id_formato] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sala]    Script Date: 21/10/2018 15:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sala](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[numero_sala] [int] NULL,
	[capacidad] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 21/10/2018 15:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_funcion] [int] NULL,
	[precio_historico] [float] NULL,
	[promocion] [varchar](50) NULL,
	[id_pelicula] [int] NULL,
	[fecha_compra] [date] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Calificaciones] ON 

INSERT [dbo].[Calificaciones] ([id], [nombre]) VALUES (3, N'Mayores de 13 años')
INSERT [dbo].[Calificaciones] ([id], [nombre]) VALUES (4, N'Apto para todo publico')
INSERT [dbo].[Calificaciones] ([id], [nombre]) VALUES (5, N'Mayores de 18 años')
INSERT [dbo].[Calificaciones] ([id], [nombre]) VALUES (6, N'Mayores de 16 años')
SET IDENTITY_INSERT [dbo].[Calificaciones] OFF
INSERT [dbo].[dias] ([id], [nombre], [number]) VALUES (1, N'Domingo', 0)
INSERT [dbo].[dias] ([id], [nombre], [number]) VALUES (3, N'Martes', 2)
INSERT [dbo].[dias] ([id], [nombre], [number]) VALUES (6, N'Viernes', 5)
INSERT [dbo].[dias] ([id], [nombre], [number]) VALUES (4, N'Miercoles', 3)
INSERT [dbo].[dias] ([id], [nombre], [number]) VALUES (5, N'Jueves', 4)
INSERT [dbo].[dias] ([id], [nombre], [number]) VALUES (7, N'Sabado', 6)
INSERT [dbo].[dias] ([id], [nombre], [number]) VALUES (2, N'Lunes', 1)
SET IDENTITY_INSERT [dbo].[Evento] ON 

INSERT [dbo].[Evento] ([id], [nombre]) VALUES (1, N'Vacaciones de Invierno')
INSERT [dbo].[Evento] ([id], [nombre]) VALUES (2, N'Lala')
SET IDENTITY_INSERT [dbo].[Evento] OFF
INSERT [dbo].[FormatoAudio] ([id], [nombre]) VALUES (1, N'Original')
INSERT [dbo].[FormatoAudio] ([id], [nombre]) VALUES (2, N'Subtitulado')
INSERT [dbo].[FormatoAudio] ([id], [nombre]) VALUES (3, N'Doblado')
INSERT [dbo].[FormatoVideo] ([id], [nombre]) VALUES (1, N'2D')
INSERT [dbo].[FormatoVideo] ([id], [nombre]) VALUES (2, N'3D')
SET IDENTITY_INSERT [dbo].[Funciones] ON 

INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (1, 4, CAST(N'2018-10-20' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (2, 4, CAST(N'2018-10-21' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (3, 4, CAST(N'2018-10-22' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (4, 4, CAST(N'2018-10-23' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (5, 4, CAST(N'2018-10-24' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (6, 4, CAST(N'2018-10-25' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (7, 4, CAST(N'2018-10-26' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (8, 4, CAST(N'2018-10-27' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (9, 4, CAST(N'2018-10-28' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (10, 4, CAST(N'2018-10-29' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (11, 4, CAST(N'2018-10-30' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (12, 4, CAST(N'2018-10-31' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (13, 4, CAST(N'2018-11-01' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (14, 4, CAST(N'2018-11-02' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (15, 4, CAST(N'2018-11-03' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (16, 4, CAST(N'2018-11-04' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (17, 4, CAST(N'2018-11-05' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (18, 4, CAST(N'2018-11-06' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (19, 4, CAST(N'2018-11-07' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (20, 4, CAST(N'2018-11-08' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (21, 4, CAST(N'2018-11-09' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (22, 4, CAST(N'2018-11-10' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (23, 4, CAST(N'2018-11-11' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (24, 4, CAST(N'2018-11-12' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (25, 4, CAST(N'2018-11-13' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (26, 4, CAST(N'2018-11-14' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (27, 4, CAST(N'2018-11-15' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (28, 4, CAST(N'2018-11-16' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (29, 4, CAST(N'2018-11-17' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (30, 4, CAST(N'2018-11-18' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (31, 4, CAST(N'2018-11-19' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (32, 4, CAST(N'2018-11-20' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (33, 4, CAST(N'2018-11-21' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (34, 4, CAST(N'2018-11-22' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (35, 4, CAST(N'2018-11-23' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (36, 4, CAST(N'2018-11-24' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (37, 4, CAST(N'2018-11-25' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (38, 4, CAST(N'2018-11-26' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (39, 4, CAST(N'2018-11-27' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (40, 4, CAST(N'2018-11-28' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (41, 4, CAST(N'2018-11-29' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (42, 4, CAST(N'2018-11-30' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (43, 4, CAST(N'2018-12-01' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (44, 4, CAST(N'2018-12-02' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (45, 4, CAST(N'2018-12-03' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (46, 4, CAST(N'2018-12-04' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (47, 4, CAST(N'2018-12-05' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (48, 4, CAST(N'2018-12-06' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (49, 4, CAST(N'2018-12-07' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (50, 4, CAST(N'2018-12-08' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (51, 4, CAST(N'2018-12-09' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (52, 4, CAST(N'2018-12-10' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (53, 4, CAST(N'2018-12-11' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (54, 4, CAST(N'2018-12-12' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (55, 4, CAST(N'2018-12-13' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (56, 4, CAST(N'2018-12-14' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (57, 4, CAST(N'2018-12-15' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (58, 4, CAST(N'2018-12-16' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (59, 4, CAST(N'2018-12-17' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (60, 4, CAST(N'2018-12-18' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (61, 4, CAST(N'2018-12-19' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (62, 4, CAST(N'2018-12-20' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (63, 4, CAST(N'2018-12-21' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (64, 4, CAST(N'2018-12-22' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (65, 4, CAST(N'2018-12-23' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (66, 4, CAST(N'2018-12-24' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (67, 4, CAST(N'2018-12-25' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (68, 4, CAST(N'2018-12-26' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (69, 4, CAST(N'2018-12-27' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (70, 4, CAST(N'2018-12-28' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (71, 4, CAST(N'2018-12-29' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (72, 4, CAST(N'2018-12-30' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (73, 4, CAST(N'2018-12-31' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (74, 4, CAST(N'2019-01-01' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (75, 4, CAST(N'2019-01-02' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (76, 4, CAST(N'2019-01-03' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (77, 4, CAST(N'2019-01-04' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (78, 4, CAST(N'2019-01-05' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (79, 4, CAST(N'2019-01-06' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (80, 4, CAST(N'2019-01-07' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (81, 4, CAST(N'2019-01-08' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (82, 4, CAST(N'2019-01-09' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (83, 4, CAST(N'2019-01-10' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (84, 4, CAST(N'2018-10-20' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (85, 4, CAST(N'2018-10-21' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (86, 4, CAST(N'2018-10-22' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (87, 4, CAST(N'2018-10-23' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (88, 4, CAST(N'2018-10-24' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (89, 4, CAST(N'2018-10-25' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (90, 4, CAST(N'2018-10-26' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (91, 4, CAST(N'2018-10-27' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (92, 4, CAST(N'2018-10-28' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (93, 4, CAST(N'2018-10-29' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (94, 4, CAST(N'2018-10-30' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (95, 4, CAST(N'2018-10-31' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (96, 4, CAST(N'2018-11-01' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (97, 4, CAST(N'2018-11-02' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (98, 4, CAST(N'2018-11-03' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (99, 4, CAST(N'2018-11-04' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 0, 1, 1, 1, 165, 1)
GO
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (100, 4, CAST(N'2018-11-05' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (101, 4, CAST(N'2018-11-06' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (102, 4, CAST(N'2018-11-07' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (103, 4, CAST(N'2018-11-08' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (104, 4, CAST(N'2018-11-09' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (105, 4, CAST(N'2018-11-10' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (106, 4, CAST(N'2018-11-11' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (107, 4, CAST(N'2018-11-12' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (108, 4, CAST(N'2018-11-13' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (109, 4, CAST(N'2018-11-14' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (110, 4, CAST(N'2018-11-15' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (111, 4, CAST(N'2018-11-16' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (112, 4, CAST(N'2018-11-17' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (113, 4, CAST(N'2018-11-18' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (114, 4, CAST(N'2018-11-19' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (115, 4, CAST(N'2018-11-20' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (116, 4, CAST(N'2018-11-21' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (117, 4, CAST(N'2018-11-22' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (118, 4, CAST(N'2018-11-23' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (119, 4, CAST(N'2018-11-24' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (120, 4, CAST(N'2018-11-25' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (121, 4, CAST(N'2018-11-26' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (122, 4, CAST(N'2018-11-27' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (123, 4, CAST(N'2018-11-28' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (124, 4, CAST(N'2018-11-29' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (125, 4, CAST(N'2018-11-30' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (126, 4, CAST(N'2018-12-01' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (127, 4, CAST(N'2018-12-02' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (128, 4, CAST(N'2018-12-03' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (129, 4, CAST(N'2018-12-04' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (130, 4, CAST(N'2018-12-05' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (131, 4, CAST(N'2018-12-06' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (132, 4, CAST(N'2018-12-07' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (133, 4, CAST(N'2018-12-08' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (134, 4, CAST(N'2018-12-09' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (135, 4, CAST(N'2018-12-10' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (136, 4, CAST(N'2018-12-11' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (137, 4, CAST(N'2018-12-12' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (138, 4, CAST(N'2018-12-13' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (139, 4, CAST(N'2018-12-14' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (140, 4, CAST(N'2018-12-15' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (141, 4, CAST(N'2018-12-16' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (142, 4, CAST(N'2018-12-17' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (143, 4, CAST(N'2018-12-18' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (144, 4, CAST(N'2018-12-19' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (145, 4, CAST(N'2018-12-20' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (146, 4, CAST(N'2018-12-21' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (147, 4, CAST(N'2018-12-22' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (148, 4, CAST(N'2018-12-23' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (149, 4, CAST(N'2018-12-24' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (150, 4, CAST(N'2018-12-25' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (151, 4, CAST(N'2018-12-26' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (152, 4, CAST(N'2018-12-27' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (153, 4, CAST(N'2018-12-28' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (154, 4, CAST(N'2018-12-29' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (155, 4, CAST(N'2018-12-30' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (156, 4, CAST(N'2018-12-31' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (157, 4, CAST(N'2019-01-01' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (158, 4, CAST(N'2019-01-02' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (159, 4, CAST(N'2019-01-03' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (160, 4, CAST(N'2019-01-04' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 5, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (161, 4, CAST(N'2019-01-05' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 6, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (162, 4, CAST(N'2019-01-06' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 0, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (163, 4, CAST(N'2019-01-07' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 1, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (164, 4, CAST(N'2019-01-08' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 2, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (165, 4, CAST(N'2019-01-09' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 3, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (166, 4, CAST(N'2019-01-10' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:30:00' AS Time), 4, 1, 1, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (167, 2, CAST(N'2018-10-20' AS Date), CAST(N'14:00:00' AS Time), CAST(N'15:58:00' AS Time), 6, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (168, 2, CAST(N'2018-10-21' AS Date), CAST(N'14:00:00' AS Time), CAST(N'15:58:00' AS Time), 0, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (169, 2, CAST(N'2018-10-22' AS Date), CAST(N'14:00:00' AS Time), CAST(N'15:58:00' AS Time), 1, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (170, 2, CAST(N'2018-10-23' AS Date), CAST(N'14:00:00' AS Time), CAST(N'15:58:00' AS Time), 2, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (171, 2, CAST(N'2018-10-24' AS Date), CAST(N'14:00:00' AS Time), CAST(N'15:58:00' AS Time), 3, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (172, 2, CAST(N'2018-10-25' AS Date), CAST(N'14:00:00' AS Time), CAST(N'15:58:00' AS Time), 4, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (173, 2, CAST(N'2018-10-26' AS Date), CAST(N'14:00:00' AS Time), CAST(N'15:58:00' AS Time), 5, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (174, 2, CAST(N'2018-10-27' AS Date), CAST(N'14:00:00' AS Time), CAST(N'15:58:00' AS Time), 6, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (175, 2, CAST(N'2018-10-28' AS Date), CAST(N'14:00:00' AS Time), CAST(N'15:58:00' AS Time), 0, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (176, 2, CAST(N'2018-10-29' AS Date), CAST(N'14:00:00' AS Time), CAST(N'15:58:00' AS Time), 1, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (177, 2, CAST(N'2018-10-30' AS Date), CAST(N'14:00:00' AS Time), CAST(N'15:58:00' AS Time), 2, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (178, 2, CAST(N'2018-10-31' AS Date), CAST(N'14:00:00' AS Time), CAST(N'15:58:00' AS Time), 3, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (179, 2, CAST(N'2018-11-01' AS Date), CAST(N'14:00:00' AS Time), CAST(N'15:58:00' AS Time), 4, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (180, 2, CAST(N'2018-11-02' AS Date), CAST(N'14:00:00' AS Time), CAST(N'15:58:00' AS Time), 5, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (181, 2, CAST(N'2018-10-20' AS Date), CAST(N'18:00:00' AS Time), CAST(N'19:58:00' AS Time), 6, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (182, 2, CAST(N'2018-10-21' AS Date), CAST(N'18:00:00' AS Time), CAST(N'19:58:00' AS Time), 0, 2, 1, 2, 108, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (183, 2, CAST(N'2018-10-22' AS Date), CAST(N'18:00:00' AS Time), CAST(N'19:58:00' AS Time), 1, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (184, 2, CAST(N'2018-10-23' AS Date), CAST(N'18:00:00' AS Time), CAST(N'19:58:00' AS Time), 2, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (185, 2, CAST(N'2018-10-24' AS Date), CAST(N'18:00:00' AS Time), CAST(N'19:58:00' AS Time), 3, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (186, 2, CAST(N'2018-10-25' AS Date), CAST(N'18:00:00' AS Time), CAST(N'19:58:00' AS Time), 4, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (187, 2, CAST(N'2018-10-26' AS Date), CAST(N'18:00:00' AS Time), CAST(N'19:58:00' AS Time), 5, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (188, 2, CAST(N'2018-10-27' AS Date), CAST(N'18:00:00' AS Time), CAST(N'19:58:00' AS Time), 6, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (189, 2, CAST(N'2018-10-28' AS Date), CAST(N'18:00:00' AS Time), CAST(N'19:58:00' AS Time), 0, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (190, 2, CAST(N'2018-10-29' AS Date), CAST(N'18:00:00' AS Time), CAST(N'19:58:00' AS Time), 1, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (191, 2, CAST(N'2018-10-30' AS Date), CAST(N'18:00:00' AS Time), CAST(N'19:58:00' AS Time), 2, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (192, 2, CAST(N'2018-10-31' AS Date), CAST(N'18:00:00' AS Time), CAST(N'19:58:00' AS Time), 3, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (193, 2, CAST(N'2018-11-01' AS Date), CAST(N'18:00:00' AS Time), CAST(N'19:58:00' AS Time), 4, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (194, 2, CAST(N'2018-11-02' AS Date), CAST(N'18:00:00' AS Time), CAST(N'19:58:00' AS Time), 5, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (195, 2, CAST(N'2018-10-20' AS Date), CAST(N'20:00:00' AS Time), CAST(N'21:58:00' AS Time), 6, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (196, 2, CAST(N'2018-10-21' AS Date), CAST(N'20:00:00' AS Time), CAST(N'21:58:00' AS Time), 0, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (197, 2, CAST(N'2018-10-22' AS Date), CAST(N'20:00:00' AS Time), CAST(N'21:58:00' AS Time), 1, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (198, 2, CAST(N'2018-10-23' AS Date), CAST(N'20:00:00' AS Time), CAST(N'21:58:00' AS Time), 2, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (199, 2, CAST(N'2018-10-24' AS Date), CAST(N'20:00:00' AS Time), CAST(N'21:58:00' AS Time), 3, 2, 1, 2, 110, 1)
GO
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (200, 2, CAST(N'2018-10-25' AS Date), CAST(N'20:00:00' AS Time), CAST(N'21:58:00' AS Time), 4, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (201, 2, CAST(N'2018-10-26' AS Date), CAST(N'20:00:00' AS Time), CAST(N'21:58:00' AS Time), 5, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (202, 2, CAST(N'2018-10-27' AS Date), CAST(N'20:00:00' AS Time), CAST(N'21:58:00' AS Time), 6, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (203, 2, CAST(N'2018-10-28' AS Date), CAST(N'20:00:00' AS Time), CAST(N'21:58:00' AS Time), 0, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (204, 2, CAST(N'2018-10-29' AS Date), CAST(N'20:00:00' AS Time), CAST(N'21:58:00' AS Time), 1, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (205, 2, CAST(N'2018-10-30' AS Date), CAST(N'20:00:00' AS Time), CAST(N'21:58:00' AS Time), 2, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (206, 2, CAST(N'2018-10-31' AS Date), CAST(N'20:00:00' AS Time), CAST(N'21:58:00' AS Time), 3, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (207, 2, CAST(N'2018-11-01' AS Date), CAST(N'20:00:00' AS Time), CAST(N'21:58:00' AS Time), 4, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (208, 2, CAST(N'2018-11-02' AS Date), CAST(N'20:00:00' AS Time), CAST(N'21:58:00' AS Time), 5, 2, 1, 2, 110, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (209, 1, CAST(N'2018-10-20' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (210, 1, CAST(N'2018-10-21' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (211, 1, CAST(N'2018-10-22' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (212, 1, CAST(N'2018-10-23' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (213, 1, CAST(N'2018-10-24' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (214, 1, CAST(N'2018-10-25' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (215, 1, CAST(N'2018-10-26' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (216, 1, CAST(N'2018-10-27' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (217, 1, CAST(N'2018-10-28' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (218, 1, CAST(N'2018-10-29' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (219, 1, CAST(N'2018-10-30' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (220, 1, CAST(N'2018-10-31' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (221, 1, CAST(N'2018-11-01' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (222, 1, CAST(N'2018-11-02' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (223, 1, CAST(N'2018-11-03' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (224, 1, CAST(N'2018-11-04' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (225, 1, CAST(N'2018-11-05' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (226, 1, CAST(N'2018-11-06' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (227, 1, CAST(N'2018-11-07' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (228, 1, CAST(N'2018-11-08' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (229, 1, CAST(N'2018-11-09' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (230, 1, CAST(N'2018-11-10' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (231, 1, CAST(N'2018-11-11' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (232, 1, CAST(N'2018-11-12' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (233, 1, CAST(N'2018-11-13' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (234, 1, CAST(N'2018-11-14' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (235, 1, CAST(N'2018-11-15' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (236, 1, CAST(N'2018-11-16' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (237, 1, CAST(N'2018-11-17' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (238, 1, CAST(N'2018-11-18' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (239, 1, CAST(N'2018-11-19' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (240, 1, CAST(N'2018-11-20' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (241, 1, CAST(N'2018-11-21' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (242, 1, CAST(N'2018-11-22' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (243, 1, CAST(N'2018-11-23' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (244, 1, CAST(N'2018-11-24' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (245, 1, CAST(N'2018-11-25' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (246, 1, CAST(N'2018-11-26' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (247, 1, CAST(N'2018-11-27' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (248, 1, CAST(N'2018-11-28' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (249, 1, CAST(N'2018-11-29' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (250, 1, CAST(N'2018-11-30' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (251, 1, CAST(N'2018-12-01' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (252, 1, CAST(N'2018-12-02' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (253, 1, CAST(N'2018-12-03' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (254, 1, CAST(N'2018-12-04' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (255, 1, CAST(N'2018-12-05' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (256, 1, CAST(N'2018-12-06' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (257, 1, CAST(N'2018-12-07' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (258, 1, CAST(N'2018-12-08' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (259, 1, CAST(N'2018-12-09' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (260, 1, CAST(N'2018-12-10' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (261, 1, CAST(N'2018-12-11' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (262, 1, CAST(N'2018-12-12' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (263, 1, CAST(N'2018-12-13' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (264, 1, CAST(N'2018-12-14' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (265, 1, CAST(N'2018-12-15' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (266, 1, CAST(N'2018-12-16' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (267, 1, CAST(N'2018-12-17' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (268, 1, CAST(N'2018-12-18' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (269, 1, CAST(N'2018-12-19' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (270, 1, CAST(N'2018-12-20' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (271, 1, CAST(N'2018-12-21' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (272, 1, CAST(N'2018-12-22' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (273, 1, CAST(N'2018-12-23' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (274, 1, CAST(N'2018-12-24' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (275, 1, CAST(N'2018-12-25' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (276, 1, CAST(N'2018-12-26' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (277, 1, CAST(N'2018-12-27' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (278, 1, CAST(N'2018-12-28' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (279, 1, CAST(N'2018-12-29' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (280, 1, CAST(N'2018-12-30' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (281, 1, CAST(N'2018-12-31' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (282, 1, CAST(N'2019-01-01' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (283, 1, CAST(N'2019-01-02' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (284, 1, CAST(N'2019-01-03' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (285, 1, CAST(N'2019-01-04' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (286, 1, CAST(N'2019-01-05' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (287, 1, CAST(N'2019-01-06' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (288, 1, CAST(N'2019-01-07' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (289, 1, CAST(N'2019-01-08' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (290, 1, CAST(N'2019-01-09' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (291, 1, CAST(N'2019-01-10' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (292, 1, CAST(N'2019-01-11' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (293, 1, CAST(N'2019-01-12' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (294, 1, CAST(N'2019-01-13' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (295, 1, CAST(N'2019-01-14' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (296, 1, CAST(N'2019-01-15' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (297, 1, CAST(N'2019-01-16' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (298, 1, CAST(N'2019-01-17' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (299, 1, CAST(N'2018-10-20' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 6, 2, 2, 1, 165, 1)
GO
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (300, 1, CAST(N'2018-10-21' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (301, 1, CAST(N'2018-10-22' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (302, 1, CAST(N'2018-10-23' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (303, 1, CAST(N'2018-10-24' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (304, 1, CAST(N'2018-10-25' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (305, 1, CAST(N'2018-10-26' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (306, 1, CAST(N'2018-10-27' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (307, 1, CAST(N'2018-10-28' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (308, 1, CAST(N'2018-10-29' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (309, 1, CAST(N'2018-10-30' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (310, 1, CAST(N'2018-10-31' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (311, 1, CAST(N'2018-11-01' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (312, 1, CAST(N'2018-11-02' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (313, 1, CAST(N'2018-11-03' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (314, 1, CAST(N'2018-11-04' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (315, 1, CAST(N'2018-11-05' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (316, 1, CAST(N'2018-11-06' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (317, 1, CAST(N'2018-11-07' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (318, 1, CAST(N'2018-11-08' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (319, 1, CAST(N'2018-11-09' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (320, 1, CAST(N'2018-11-10' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (321, 1, CAST(N'2018-11-11' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (322, 1, CAST(N'2018-11-12' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (323, 1, CAST(N'2018-11-13' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (324, 1, CAST(N'2018-11-14' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (325, 1, CAST(N'2018-11-15' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (326, 1, CAST(N'2018-11-16' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (327, 1, CAST(N'2018-11-17' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (328, 1, CAST(N'2018-11-18' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (329, 1, CAST(N'2018-11-19' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (330, 1, CAST(N'2018-11-20' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (331, 1, CAST(N'2018-11-21' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (332, 1, CAST(N'2018-11-22' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (333, 1, CAST(N'2018-11-23' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (334, 1, CAST(N'2018-11-24' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (335, 1, CAST(N'2018-11-25' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (336, 1, CAST(N'2018-11-26' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (337, 1, CAST(N'2018-11-27' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (338, 1, CAST(N'2018-11-28' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (339, 1, CAST(N'2018-11-29' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (340, 1, CAST(N'2018-11-30' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (341, 1, CAST(N'2018-12-01' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (342, 1, CAST(N'2018-12-02' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (343, 1, CAST(N'2018-12-03' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (344, 1, CAST(N'2018-12-04' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (345, 1, CAST(N'2018-12-05' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (346, 1, CAST(N'2018-12-06' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (347, 1, CAST(N'2018-12-07' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (348, 1, CAST(N'2018-12-08' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (349, 1, CAST(N'2018-12-09' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (350, 1, CAST(N'2018-12-10' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (351, 1, CAST(N'2018-12-11' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (352, 1, CAST(N'2018-12-12' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (353, 1, CAST(N'2018-12-13' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (354, 1, CAST(N'2018-12-14' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (355, 1, CAST(N'2018-12-15' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (356, 1, CAST(N'2018-12-16' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (357, 1, CAST(N'2018-12-17' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (358, 1, CAST(N'2018-12-18' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (359, 1, CAST(N'2018-12-19' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (360, 1, CAST(N'2018-12-20' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (361, 1, CAST(N'2018-12-21' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (362, 1, CAST(N'2018-12-22' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (363, 1, CAST(N'2018-12-23' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (364, 1, CAST(N'2018-12-24' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (365, 1, CAST(N'2018-12-25' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (366, 1, CAST(N'2018-12-26' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (367, 1, CAST(N'2018-12-27' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (368, 1, CAST(N'2018-12-28' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (369, 1, CAST(N'2018-12-29' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (370, 1, CAST(N'2018-12-30' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (371, 1, CAST(N'2018-12-31' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (372, 1, CAST(N'2019-01-01' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (373, 1, CAST(N'2019-01-02' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (374, 1, CAST(N'2019-01-03' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (375, 1, CAST(N'2019-01-04' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (376, 1, CAST(N'2019-01-05' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (377, 1, CAST(N'2019-01-06' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (378, 1, CAST(N'2019-01-07' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (379, 1, CAST(N'2019-01-08' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (380, 1, CAST(N'2019-01-09' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (381, 1, CAST(N'2019-01-10' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (382, 1, CAST(N'2019-01-11' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 5, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (383, 1, CAST(N'2019-01-12' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 6, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (384, 1, CAST(N'2019-01-13' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 0, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (385, 1, CAST(N'2019-01-14' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 1, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (386, 1, CAST(N'2019-01-15' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 2, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (387, 1, CAST(N'2019-01-16' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 3, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (388, 1, CAST(N'2019-01-17' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:35:00' AS Time), 4, 2, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (389, 1, CAST(N'2018-10-20' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 6, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (390, 1, CAST(N'2018-10-21' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 0, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (391, 1, CAST(N'2018-10-22' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 1, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (392, 1, CAST(N'2018-10-23' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 2, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (393, 1, CAST(N'2018-10-24' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 3, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (394, 1, CAST(N'2018-10-25' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 4, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (395, 1, CAST(N'2018-10-26' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 5, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (396, 1, CAST(N'2018-10-27' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 6, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (397, 1, CAST(N'2018-10-28' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 0, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (398, 1, CAST(N'2018-10-29' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 1, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (399, 1, CAST(N'2018-10-30' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 2, 1, 2, 1, 165, 1)
GO
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (400, 1, CAST(N'2018-10-31' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 3, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (401, 1, CAST(N'2018-11-01' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 4, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (402, 1, CAST(N'2018-11-02' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 5, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (403, 1, CAST(N'2018-11-03' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 6, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (404, 1, CAST(N'2018-11-04' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 0, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (405, 1, CAST(N'2018-11-05' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 1, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (406, 1, CAST(N'2018-11-06' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 2, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (407, 1, CAST(N'2018-11-07' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 3, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (408, 1, CAST(N'2018-11-08' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 4, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (409, 1, CAST(N'2018-11-09' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 5, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (410, 1, CAST(N'2018-11-10' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 6, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (411, 1, CAST(N'2018-11-11' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 0, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (412, 1, CAST(N'2018-11-12' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 1, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (413, 1, CAST(N'2018-11-13' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 2, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (414, 1, CAST(N'2018-11-14' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 3, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (415, 1, CAST(N'2018-11-15' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 4, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (416, 1, CAST(N'2018-11-16' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 5, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (417, 1, CAST(N'2018-11-17' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 6, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (418, 1, CAST(N'2018-11-18' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 0, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (419, 1, CAST(N'2018-11-19' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 1, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (420, 1, CAST(N'2018-11-20' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 2, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (421, 1, CAST(N'2018-11-21' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 3, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (422, 1, CAST(N'2018-11-22' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 4, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (423, 1, CAST(N'2018-11-23' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 5, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (424, 1, CAST(N'2018-11-24' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 6, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (425, 1, CAST(N'2018-11-25' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 0, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (426, 1, CAST(N'2018-11-26' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 1, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (427, 1, CAST(N'2018-11-27' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 2, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (428, 1, CAST(N'2018-11-28' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 3, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (429, 1, CAST(N'2018-11-29' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 4, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (430, 1, CAST(N'2018-11-30' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 5, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (431, 1, CAST(N'2018-12-01' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 6, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (432, 1, CAST(N'2018-12-02' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 0, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (433, 1, CAST(N'2018-12-03' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 1, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (434, 1, CAST(N'2018-12-04' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 2, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (435, 1, CAST(N'2018-12-05' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 3, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (436, 1, CAST(N'2018-12-06' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 4, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (437, 1, CAST(N'2018-12-07' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 5, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (438, 1, CAST(N'2018-12-08' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 6, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (439, 1, CAST(N'2018-12-09' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 0, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (440, 1, CAST(N'2018-12-10' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 1, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (441, 1, CAST(N'2018-12-11' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 2, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (442, 1, CAST(N'2018-12-12' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 3, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (443, 1, CAST(N'2018-12-13' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 4, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (444, 1, CAST(N'2018-12-14' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 5, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (445, 1, CAST(N'2018-12-15' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 6, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (446, 1, CAST(N'2018-12-16' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 0, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (447, 1, CAST(N'2018-12-17' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 1, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (448, 1, CAST(N'2018-12-18' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 2, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (449, 1, CAST(N'2018-12-19' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 3, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (450, 1, CAST(N'2018-12-20' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 4, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (451, 1, CAST(N'2018-12-21' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 5, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (452, 1, CAST(N'2018-12-22' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 6, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (453, 1, CAST(N'2018-12-23' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 0, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (454, 1, CAST(N'2018-12-24' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 1, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (455, 1, CAST(N'2018-12-25' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 2, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (456, 1, CAST(N'2018-12-26' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 3, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (457, 1, CAST(N'2018-12-27' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 4, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (458, 1, CAST(N'2018-12-28' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 5, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (459, 1, CAST(N'2018-12-29' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 6, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (460, 1, CAST(N'2018-12-30' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 0, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (461, 1, CAST(N'2018-12-31' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 1, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (462, 1, CAST(N'2019-01-01' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 2, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (463, 1, CAST(N'2019-01-02' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 3, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (464, 1, CAST(N'2019-01-03' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 4, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (465, 1, CAST(N'2019-01-04' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 5, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (466, 1, CAST(N'2019-01-05' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 6, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (467, 1, CAST(N'2019-01-06' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 0, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (468, 1, CAST(N'2019-01-07' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 1, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (469, 1, CAST(N'2019-01-08' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 2, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (470, 1, CAST(N'2019-01-09' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 3, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (471, 1, CAST(N'2019-01-10' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 4, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (472, 1, CAST(N'2019-01-11' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 5, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (473, 1, CAST(N'2019-01-12' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 6, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (474, 1, CAST(N'2019-01-13' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 0, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (475, 1, CAST(N'2019-01-14' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 1, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (476, 1, CAST(N'2019-01-15' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 2, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (477, 1, CAST(N'2019-01-16' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 3, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (478, 1, CAST(N'2019-01-17' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:35:00' AS Time), 4, 1, 2, 1, 165, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (479, 3, CAST(N'2018-11-15' AS Date), CAST(N'10:30:00' AS Time), CAST(N'12:50:00' AS Time), 4, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (480, 3, CAST(N'2018-11-16' AS Date), CAST(N'10:30:00' AS Time), CAST(N'12:50:00' AS Time), 5, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (481, 3, CAST(N'2018-11-17' AS Date), CAST(N'10:30:00' AS Time), CAST(N'12:50:00' AS Time), 6, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (482, 3, CAST(N'2018-11-18' AS Date), CAST(N'10:30:00' AS Time), CAST(N'12:50:00' AS Time), 0, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (483, 3, CAST(N'2018-11-19' AS Date), CAST(N'10:30:00' AS Time), CAST(N'12:50:00' AS Time), 1, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (484, 3, CAST(N'2018-11-20' AS Date), CAST(N'10:30:00' AS Time), CAST(N'12:50:00' AS Time), 2, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (485, 3, CAST(N'2018-11-21' AS Date), CAST(N'10:30:00' AS Time), CAST(N'12:50:00' AS Time), 3, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (486, 3, CAST(N'2018-11-22' AS Date), CAST(N'10:30:00' AS Time), CAST(N'12:50:00' AS Time), 4, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (487, 3, CAST(N'2018-11-23' AS Date), CAST(N'10:30:00' AS Time), CAST(N'12:50:00' AS Time), 5, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (488, 3, CAST(N'2018-11-24' AS Date), CAST(N'10:30:00' AS Time), CAST(N'12:50:00' AS Time), 6, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (489, 3, CAST(N'2018-11-25' AS Date), CAST(N'10:30:00' AS Time), CAST(N'12:50:00' AS Time), 0, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (490, 3, CAST(N'2018-11-26' AS Date), CAST(N'10:30:00' AS Time), CAST(N'12:50:00' AS Time), 1, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (491, 3, CAST(N'2018-11-27' AS Date), CAST(N'10:30:00' AS Time), CAST(N'12:50:00' AS Time), 2, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (492, 3, CAST(N'2018-11-28' AS Date), CAST(N'10:30:00' AS Time), CAST(N'12:50:00' AS Time), 3, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (493, 3, CAST(N'2018-11-29' AS Date), CAST(N'10:30:00' AS Time), CAST(N'12:50:00' AS Time), 4, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (494, 3, CAST(N'2018-11-15' AS Date), CAST(N'14:30:00' AS Time), CAST(N'16:50:00' AS Time), 4, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (495, 3, CAST(N'2018-11-16' AS Date), CAST(N'14:30:00' AS Time), CAST(N'16:50:00' AS Time), 5, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (496, 3, CAST(N'2018-11-17' AS Date), CAST(N'14:30:00' AS Time), CAST(N'16:50:00' AS Time), 6, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (497, 3, CAST(N'2018-11-18' AS Date), CAST(N'14:30:00' AS Time), CAST(N'16:50:00' AS Time), 0, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (498, 3, CAST(N'2018-11-19' AS Date), CAST(N'14:30:00' AS Time), CAST(N'16:50:00' AS Time), 1, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (499, 3, CAST(N'2018-11-20' AS Date), CAST(N'14:30:00' AS Time), CAST(N'16:50:00' AS Time), 2, 2, 2, 3, 140, 1)
GO
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (500, 3, CAST(N'2018-11-21' AS Date), CAST(N'14:30:00' AS Time), CAST(N'16:50:00' AS Time), 3, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (501, 3, CAST(N'2018-11-22' AS Date), CAST(N'14:30:00' AS Time), CAST(N'16:50:00' AS Time), 4, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (502, 3, CAST(N'2018-11-23' AS Date), CAST(N'14:30:00' AS Time), CAST(N'16:50:00' AS Time), 5, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (503, 3, CAST(N'2018-11-24' AS Date), CAST(N'14:30:00' AS Time), CAST(N'16:50:00' AS Time), 6, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (504, 3, CAST(N'2018-11-25' AS Date), CAST(N'14:30:00' AS Time), CAST(N'16:50:00' AS Time), 0, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (505, 3, CAST(N'2018-11-26' AS Date), CAST(N'14:30:00' AS Time), CAST(N'16:50:00' AS Time), 1, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (506, 3, CAST(N'2018-11-27' AS Date), CAST(N'14:30:00' AS Time), CAST(N'16:50:00' AS Time), 2, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (507, 3, CAST(N'2018-11-28' AS Date), CAST(N'14:30:00' AS Time), CAST(N'16:50:00' AS Time), 3, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (508, 3, CAST(N'2018-11-29' AS Date), CAST(N'14:30:00' AS Time), CAST(N'16:50:00' AS Time), 4, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (509, 3, CAST(N'2018-11-15' AS Date), CAST(N'18:30:00' AS Time), CAST(N'20:50:00' AS Time), 4, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (510, 3, CAST(N'2018-11-16' AS Date), CAST(N'18:30:00' AS Time), CAST(N'20:50:00' AS Time), 5, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (511, 3, CAST(N'2018-11-17' AS Date), CAST(N'18:30:00' AS Time), CAST(N'20:50:00' AS Time), 6, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (512, 3, CAST(N'2018-11-18' AS Date), CAST(N'18:30:00' AS Time), CAST(N'20:50:00' AS Time), 0, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (513, 3, CAST(N'2018-11-19' AS Date), CAST(N'18:30:00' AS Time), CAST(N'20:50:00' AS Time), 1, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (514, 3, CAST(N'2018-11-20' AS Date), CAST(N'18:30:00' AS Time), CAST(N'20:50:00' AS Time), 2, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (515, 3, CAST(N'2018-11-21' AS Date), CAST(N'18:30:00' AS Time), CAST(N'20:50:00' AS Time), 3, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (516, 3, CAST(N'2018-11-22' AS Date), CAST(N'18:30:00' AS Time), CAST(N'20:50:00' AS Time), 4, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (517, 3, CAST(N'2018-11-23' AS Date), CAST(N'18:30:00' AS Time), CAST(N'20:50:00' AS Time), 5, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (518, 3, CAST(N'2018-11-24' AS Date), CAST(N'18:30:00' AS Time), CAST(N'20:50:00' AS Time), 6, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (519, 3, CAST(N'2018-11-25' AS Date), CAST(N'18:30:00' AS Time), CAST(N'20:50:00' AS Time), 0, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (520, 3, CAST(N'2018-11-26' AS Date), CAST(N'18:30:00' AS Time), CAST(N'20:50:00' AS Time), 1, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (521, 3, CAST(N'2018-11-27' AS Date), CAST(N'18:30:00' AS Time), CAST(N'20:50:00' AS Time), 2, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (522, 3, CAST(N'2018-11-28' AS Date), CAST(N'18:30:00' AS Time), CAST(N'20:50:00' AS Time), 3, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (523, 3, CAST(N'2018-11-29' AS Date), CAST(N'18:30:00' AS Time), CAST(N'20:50:00' AS Time), 4, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (524, 3, CAST(N'2018-11-15' AS Date), CAST(N'22:30:00' AS Time), CAST(N'00:50:00' AS Time), 4, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (525, 3, CAST(N'2018-11-16' AS Date), CAST(N'22:30:00' AS Time), CAST(N'00:50:00' AS Time), 5, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (526, 3, CAST(N'2018-11-17' AS Date), CAST(N'22:30:00' AS Time), CAST(N'00:50:00' AS Time), 6, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (527, 3, CAST(N'2018-11-18' AS Date), CAST(N'22:30:00' AS Time), CAST(N'00:50:00' AS Time), 0, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (528, 3, CAST(N'2018-11-19' AS Date), CAST(N'22:30:00' AS Time), CAST(N'00:50:00' AS Time), 1, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (529, 3, CAST(N'2018-11-20' AS Date), CAST(N'22:30:00' AS Time), CAST(N'00:50:00' AS Time), 2, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (530, 3, CAST(N'2018-11-21' AS Date), CAST(N'22:30:00' AS Time), CAST(N'00:50:00' AS Time), 3, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (531, 3, CAST(N'2018-11-22' AS Date), CAST(N'22:30:00' AS Time), CAST(N'00:50:00' AS Time), 4, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (532, 3, CAST(N'2018-11-23' AS Date), CAST(N'22:30:00' AS Time), CAST(N'00:50:00' AS Time), 5, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (533, 3, CAST(N'2018-11-24' AS Date), CAST(N'22:30:00' AS Time), CAST(N'00:50:00' AS Time), 6, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (534, 3, CAST(N'2018-11-25' AS Date), CAST(N'22:30:00' AS Time), CAST(N'00:50:00' AS Time), 0, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (535, 3, CAST(N'2018-11-26' AS Date), CAST(N'22:30:00' AS Time), CAST(N'00:50:00' AS Time), 1, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (536, 3, CAST(N'2018-11-27' AS Date), CAST(N'22:30:00' AS Time), CAST(N'00:50:00' AS Time), 2, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (537, 3, CAST(N'2018-11-28' AS Date), CAST(N'22:30:00' AS Time), CAST(N'00:50:00' AS Time), 3, 2, 2, 3, 140, 1)
INSERT [dbo].[Funciones] ([id], [id_pelicula], [fecha_funcion], [horario_comienzo], [horario_fin], [dia], [id_formato], [id_audio], [id_sala], [stock_tickets], [id_evento]) VALUES (538, 3, CAST(N'2018-11-29' AS Date), CAST(N'22:30:00' AS Time), CAST(N'00:50:00' AS Time), 4, 2, 2, 3, 140, 1)
SET IDENTITY_INSERT [dbo].[Funciones] OFF
SET IDENTITY_INSERT [dbo].[Genero] ON 

INSERT [dbo].[Genero] ([id], [nombre]) VALUES (1, N'Acción')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (2, N'Anime')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (3, N'Ciencia Ficción')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (4, N'Fantasia')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (5, N'Clasicas')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (6, N'Comedias')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (7, N'Deportes')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (8, N'Documentales')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (9, N'Dramas')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (10, N'Fe y Espiritualad')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (11, N'Independientes')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (12, N'Infantiles y Familiares')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (13, N'Latinoamericanas')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (14, N'Musicales')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (15, N'Musica')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (16, N'Peliculas Argentinas')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (17, N'Peliculas Policiales')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (18, N'Romance')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (19, N'Thrillers')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (20, N'Terror')
INSERT [dbo].[Genero] ([id], [nombre]) VALUES (21, N'Aclamadas por la critica')
SET IDENTITY_INSERT [dbo].[Genero] OFF
SET IDENTITY_INSERT [dbo].[PaisOrigen] ON 

INSERT [dbo].[PaisOrigen] ([id], [nombre]) VALUES (1, N'Argentina')
INSERT [dbo].[PaisOrigen] ([id], [nombre]) VALUES (2, N'Estados Unidos')
INSERT [dbo].[PaisOrigen] ([id], [nombre]) VALUES (3, N'Reino Unido')
SET IDENTITY_INSERT [dbo].[PaisOrigen] OFF
SET IDENTITY_INSERT [dbo].[Pelicula] ON 

INSERT [dbo].[Pelicula] ([id], [titulo_original], [titulo_para_presentar], [duracion_min], [argumento], [id_calificacion], [id_paisdeorigen], [url_image]) VALUES (1, N'Venom', N'Venom', 140, N'[No hay descripcion]', 3, 3, N'http://www.gstatic.com/tv/thumb/v22vodart/13937884/p13937884_v_v8_aa.jpg')
INSERT [dbo].[Pelicula] ([id], [titulo_original], [titulo_para_presentar], [duracion_min], [argumento], [id_calificacion], [id_paisdeorigen], [url_image]) VALUES (2, N'Christopher Robin', N'Christopher Robin', 103, N'[No hay descripcion]', 3, 2, N'http://www.gstatic.com/tv/thumb/v22vodart/15176575/p15176575_v_v8_aa.jpg')
INSERT [dbo].[Pelicula] ([id], [titulo_original], [titulo_para_presentar], [duracion_min], [argumento], [id_calificacion], [id_paisdeorigen], [url_image]) VALUES (3, N'Fantastics Beasts and The Crimes Of Grindelwald', N'Fantastics Beasts and The Crimes Of Grindelwald', 125, N'No hay', 3, 3, N'http://www.gstatic.com/tv/thumb/movieposters/13663846/p13663846_p_v8_ae.jpg')
INSERT [dbo].[Pelicula] ([id], [titulo_original], [titulo_para_presentar], [duracion_min], [argumento], [id_calificacion], [id_paisdeorigen], [url_image]) VALUES (4, N'Avengers: Infinity War', N'Avengers: Infinity War', 135, N'No hay', 3, 3, N'http://www.gstatic.com/tv/thumb/v22vodart/12863030/p12863030_v_v8_ae.jpg')
SET IDENTITY_INSERT [dbo].[Pelicula] OFF
INSERT [dbo].[Precio] ([id], [nombre], [precio], [id_formato]) VALUES (1, N'GENERAL 2D', 220, 1)
INSERT [dbo].[Precio] ([id], [nombre], [precio], [id_formato]) VALUES (3, N'MENOR 2D', 190, 1)
INSERT [dbo].[Precio] ([id], [nombre], [precio], [id_formato]) VALUES (4, N'JUBILADOS 2D', 190, 1)
INSERT [dbo].[Precio] ([id], [nombre], [precio], [id_formato]) VALUES (5, N'MIERCOLES 2D', 110, 1)
INSERT [dbo].[Precio] ([id], [nombre], [precio], [id_formato]) VALUES (6, N'GENERAL 3D', 230, 2)
INSERT [dbo].[Precio] ([id], [nombre], [precio], [id_formato]) VALUES (7, N'MIERCOLES 3D', 115, 2)
INSERT [dbo].[Precio] ([id], [nombre], [precio], [id_formato]) VALUES (8, N'2X1 2D', 220, 1)
INSERT [dbo].[Precio] ([id], [nombre], [precio], [id_formato]) VALUES (9, N'2X1 3D', 230, 2)
SET IDENTITY_INSERT [dbo].[Sala] ON 

INSERT [dbo].[Sala] ([id], [numero_sala], [capacidad]) VALUES (1, 3, 140)
INSERT [dbo].[Sala] ([id], [numero_sala], [capacidad]) VALUES (2, 4, 100)
INSERT [dbo].[Sala] ([id], [numero_sala], [capacidad]) VALUES (3, 5, 110)
INSERT [dbo].[Sala] ([id], [numero_sala], [capacidad]) VALUES (4, 6, 140)
INSERT [dbo].[Sala] ([id], [numero_sala], [capacidad]) VALUES (5, 7, 115)
INSERT [dbo].[Sala] ([id], [numero_sala], [capacidad]) VALUES (6, 8, 90)
INSERT [dbo].[Sala] ([id], [numero_sala], [capacidad]) VALUES (7, 9, 90)
INSERT [dbo].[Sala] ([id], [numero_sala], [capacidad]) VALUES (8, 2, 110)
INSERT [dbo].[Sala] ([id], [numero_sala], [capacidad]) VALUES (9, 1, 165)
INSERT [dbo].[Sala] ([id], [numero_sala], [capacidad]) VALUES (10, 10, 200)
SET IDENTITY_INSERT [dbo].[Sala] OFF
SET IDENTITY_INSERT [dbo].[Ticket] ON 

INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (1, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (2, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (3, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (4, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (5, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (6, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (7, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (8, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (9, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (10, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (11, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (12, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (13, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (14, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (15, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (16, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (17, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (18, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (19, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (20, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (21, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (22, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (23, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (24, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (25, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (26, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (27, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (28, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (29, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (30, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (31, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (32, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (33, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (34, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (35, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (36, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (37, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (38, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (39, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (40, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (41, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (42, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (43, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (44, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (45, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (46, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (47, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (48, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (49, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (50, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (51, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (52, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (53, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (54, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (55, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (56, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (57, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (58, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (59, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (60, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (61, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (62, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (63, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (64, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (65, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (66, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (67, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (68, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (69, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (70, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (71, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (72, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (73, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (74, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (75, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (76, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (77, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (78, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (79, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (80, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (81, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (82, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (83, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (84, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (85, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (86, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (87, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (88, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (89, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (90, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (91, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (92, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (93, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (94, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (95, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (96, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (97, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (98, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (99, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
GO
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (100, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (101, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (102, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (103, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (104, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (105, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (106, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (107, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (108, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (109, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (110, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (111, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (112, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (113, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (114, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (115, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (116, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (117, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (118, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (119, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (120, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (121, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (122, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (123, 165, 190, N'JUBILADOS 2D $190', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (124, 165, 190, N'JUBILADOS 2D $190', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (125, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (126, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (127, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (128, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (129, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (130, 165, 110, N'2X1 2D $220', 1, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (131, 165, 190, N'JUBILADOS 2D $190', 2, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (132, 165, 190, N'JUBILADOS 2D $190', 2, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (133, 165, 190, N'JUBILADOS 2D $190', 2, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (134, 165, 190, N'JUBILADOS 2D $190', 2, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (135, 165, 190, N'JUBILADOS 2D $190', 2, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (136, 165, 190, N'JUBILADOS 2D $190', 2, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (137, 165, 190, N'JUBILADOS 2D $190', 2, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (138, 165, 190, N'JUBILADOS 2D $190', 2, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (139, 165, 190, N'JUBILADOS 2D $190', 2, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (140, 165, 190, N'JUBILADOS 2D $190', 2, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (141, 165, 190, N'JUBILADOS 2D $190', 2, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (142, 165, 190, N'JUBILADOS 2D $190', 2, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (143, 165, 190, N'JUBILADOS 2D $190', 2, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (144, 165, 190, N'JUBILADOS 2D $190', 2, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (145, 182, 115, N'2X1 3D $230', 2, CAST(N'2018-10-21' AS Date))
INSERT [dbo].[Ticket] ([id], [id_funcion], [precio_historico], [promocion], [id_pelicula], [fecha_compra]) VALUES (146, 182, 115, N'2X1 3D $230', 2, CAST(N'2018-10-21' AS Date))
SET IDENTITY_INSERT [dbo].[Ticket] OFF
ALTER TABLE [dbo].[Ticket] ADD  CONSTRAINT [DF_Ticket_fecha_compra]  DEFAULT (getdate()) FOR [fecha_compra]
GO
USE [master]
GO
ALTER DATABASE [pav1] SET  READ_WRITE 
GO
