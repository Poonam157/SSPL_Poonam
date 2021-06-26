#SSPL_Poonam

##Introduction

This application include Login , Employee Registeration and Gridview of Employee data in database and Find Prime numbers upto n.

## Technologies

Visual Studio 2019: asp.net, C#
Database: SQL Server Management Studio 18

Database: Employee_Poonam
Tables: TblEmployee, TblDesignation, TblLogin



##Sql Script:


USE [master]
GO
/****** Object:  Database [Employee_Poonam]    Script Date: 26-06-2021 16:25:24 ******/
CREATE DATABASE [Employee_Poonam]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Employee_Poonam', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\Employee_Poonam.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Employee_Poonam_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\Employee_Poonam_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Employee_Poonam] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Employee_Poonam].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Employee_Poonam] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Employee_Poonam] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Employee_Poonam] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Employee_Poonam] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Employee_Poonam] SET ARITHABORT OFF 
GO
ALTER DATABASE [Employee_Poonam] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Employee_Poonam] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Employee_Poonam] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Employee_Poonam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Employee_Poonam] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Employee_Poonam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Employee_Poonam] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Employee_Poonam] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Employee_Poonam] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Employee_Poonam] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Employee_Poonam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Employee_Poonam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Employee_Poonam] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Employee_Poonam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Employee_Poonam] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Employee_Poonam] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Employee_Poonam] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Employee_Poonam] SET RECOVERY FULL 
GO
ALTER DATABASE [Employee_Poonam] SET  MULTI_USER 
GO
ALTER DATABASE [Employee_Poonam] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Employee_Poonam] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Employee_Poonam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Employee_Poonam] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Employee_Poonam] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Employee_Poonam] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Employee_Poonam', N'ON'
GO
ALTER DATABASE [Employee_Poonam] SET QUERY_STORE = OFF
GO
USE [Employee_Poonam]
GO
/****** Object:  Table [dbo].[TblDesignation]    Script Date: 26-06-2021 16:25:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDesignation](
	[DesignationId] [int] IDENTITY(1,1) NOT NULL,
	[DesignationDesc] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblEmployee]    Script Date: 26-06-2021 16:25:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblEmployee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Email] [varchar](max) NOT NULL,
	[MobileNo] [bigint] NOT NULL,
	[DesignationId] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblLogin]    Script Date: 26-06-2021 16:25:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblLogin](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Employee_Poonam] SET  READ_WRITE 
GO
