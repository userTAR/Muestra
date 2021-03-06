USE [master]
GO
/****** Object:  Database [aeronavesVendidas]    Script Date: 29/11/2020 15:45:07 ******/
CREATE DATABASE [aeronavesVendidas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aeronavesVendidas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\aeronavesVendidas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'aeronavesVendidas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\aeronavesVendidas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [aeronavesVendidas] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aeronavesVendidas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aeronavesVendidas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET ARITHABORT OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aeronavesVendidas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aeronavesVendidas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [aeronavesVendidas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aeronavesVendidas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [aeronavesVendidas] SET  MULTI_USER 
GO
ALTER DATABASE [aeronavesVendidas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aeronavesVendidas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [aeronavesVendidas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [aeronavesVendidas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [aeronavesVendidas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [aeronavesVendidas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [aeronavesVendidas] SET QUERY_STORE = OFF
GO
USE [aeronavesVendidas]
GO
/****** Object:  Table [dbo].[avion]    Script Date: 29/11/2020 15:45:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[avion](
	[marca] [varchar](50) NULL,
	[modelo] [varchar](50) NULL,
	[velocidadCrucero] [int] NULL,
	[velocidadPerdida] [int] NULL,
	[precio] [varchar](50) NULL,
	[numeroSerie] [varchar](50) NOT NULL,
	[tipoPaso] [varchar](50) NULL,
	[autonomia] [int] NULL,
	[envergadura] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[helicoptero]    Script Date: 29/11/2020 15:45:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[helicoptero](
	[marca] [varchar](50) NULL,
	[modelo] [varchar](50) NULL,
	[velocidadCrucero] [int] NULL,
	[precio] [varchar](50) NULL,
	[numeroSerie] [varchar](50) NULL,
	[cantidadPalas] [int] NULL,
	[techoOperativo] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[planeador]    Script Date: 29/11/2020 15:45:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[planeador](
	[marca] [varchar](50) NULL,
	[modelo] [varchar](50) NULL,
	[velocidadCrucero] [int] NULL,
	[precio] [varchar](50) NULL,
	[numeroSerie] [varchar](50) NULL,
	[envergadura] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[avion] ([marca], [modelo], [velocidadCrucero], [velocidadPerdida], [precio], [numeroSerie], [tipoPaso], [autonomia], [envergadura]) VALUES (N'Cessna', N'lala', 666, 55, N'666', N'77', N'Fijo', 4, N'66')
INSERT [dbo].[avion] ([marca], [modelo], [velocidadCrucero], [velocidadPerdida], [precio], [numeroSerie], [tipoPaso], [autonomia], [envergadura]) VALUES (N'prueba 3', N'lala 3', 44, 698, N'68000', N'69', N'Variable', 5, N'55')
INSERT [dbo].[avion] ([marca], [modelo], [velocidadCrucero], [velocidadPerdida], [precio], [numeroSerie], [tipoPaso], [autonomia], [envergadura]) VALUES (N'prueba 1', N'lala 1', 132, 213, N'233', N'33', N'Variable', 33, N'2')
GO
USE [master]
GO
ALTER DATABASE [aeronavesVendidas] SET  READ_WRITE 
GO
