USE [master]
GO
/****** Object:  Database [aeronavesNoVendidas]    Script Date: 29/11/2020 15:41:54 ******/
CREATE DATABASE [aeronavesNoVendidas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aeronavesNoVendidas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\aeronavesNoVendidas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'aeronavesNoVendidas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\aeronavesNoVendidas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [aeronavesNoVendidas] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aeronavesNoVendidas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aeronavesNoVendidas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET ARITHABORT OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aeronavesNoVendidas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aeronavesNoVendidas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [aeronavesNoVendidas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aeronavesNoVendidas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [aeronavesNoVendidas] SET  MULTI_USER 
GO
ALTER DATABASE [aeronavesNoVendidas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aeronavesNoVendidas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [aeronavesNoVendidas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [aeronavesNoVendidas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [aeronavesNoVendidas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [aeronavesNoVendidas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [aeronavesNoVendidas] SET QUERY_STORE = OFF
GO
USE [aeronavesNoVendidas]
GO
/****** Object:  Table [dbo].[avion]    Script Date: 29/11/2020 15:41:54 ******/
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
	[numeroSerie] [varchar](50) NULL,
	[tipoPaso] [varchar](50) NULL,
	[autonomia] [int] NULL,
	[envergadura] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[helicoptero]    Script Date: 29/11/2020 15:41:54 ******/
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
/****** Object:  Table [dbo].[planeador]    Script Date: 29/11/2020 15:41:54 ******/
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
INSERT [dbo].[helicoptero] ([marca], [modelo], [velocidadCrucero], [precio], [numeroSerie], [cantidadPalas], [techoOperativo]) VALUES (N'prueba', N'bell', 555, N'25600', N'768', 3, N'25000')
INSERT [dbo].[helicoptero] ([marca], [modelo], [velocidadCrucero], [precio], [numeroSerie], [cantidadPalas], [techoOperativo]) VALUES (N'Bell', N'B180', 200, N'35000', N'55', 3, N'27000')
GO
INSERT [dbo].[planeador] ([marca], [modelo], [velocidadCrucero], [precio], [numeroSerie], [envergadura]) VALUES (N'Prueba', N'A4', 40, N'15000', N'978', N'20')
GO
USE [master]
GO
ALTER DATABASE [aeronavesNoVendidas] SET  READ_WRITE 
GO
