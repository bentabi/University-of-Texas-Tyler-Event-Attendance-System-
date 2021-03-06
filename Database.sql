USE [master]
GO
/****** Object:  Database [emp_attendance]    Script Date: 02/14/2015 18:14:33 ******/
CREATE DATABASE [Coll_attendance] ON  PRIMARY 
( NAME = N'emp_attendance', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\emp_attendance.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'emp_attendance_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\emp_attendance_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [emp_attendance] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [emp_attendance].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [emp_attendance] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [emp_attendance] SET ANSI_NULLS OFF
GO
ALTER DATABASE [emp_attendance] SET ANSI_PADDING OFF
GO
ALTER DATABASE [emp_attendance] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [emp_attendance] SET ARITHABORT OFF
GO
ALTER DATABASE [emp_attendance] SET AUTO_CLOSE ON
GO
ALTER DATABASE [emp_attendance] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [emp_attendance] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [emp_attendance] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [emp_attendance] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [emp_attendance] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [emp_attendance] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [emp_attendance] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [emp_attendance] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [emp_attendance] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [emp_attendance] SET  ENABLE_BROKER
GO
ALTER DATABASE [emp_attendance] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [emp_attendance] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [emp_attendance] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [emp_attendance] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [emp_attendance] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [emp_attendance] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [emp_attendance] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [emp_attendance] SET  READ_WRITE
GO
ALTER DATABASE [emp_attendance] SET RECOVERY SIMPLE
GO
ALTER DATABASE [emp_attendance] SET  MULTI_USER
GO
ALTER DATABASE [emp_attendance] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [emp_attendance] SET DB_CHAINING OFF
GO
USE [Coll_attendance]
GO
/****** Object:  Table [dbo].[Temp]    Script Date: 02/14/2015 18:14:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Temp](
	[EId] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Hours] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Temp] ([EId], [Name], [Hours]) VALUES (N'1001', N'Nitish', 10)
INSERT [dbo].[Temp] ([EId], [Name], [Hours]) VALUES (N'1002', N'Max', 18)
/****** Object:  Table [dbo].[attendance]    Script Date: 02/14/2015 18:14:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[attendance](
	[id] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[inTime] [varchar](50) NULL,
	[out] [varchar](50) NULL,
	[hour] [int] NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[attendance] ([id], [date], [inTime], [out], [hour], [Name]) VALUES (N'1001', N'13-02-15', N'20:48', N'22:50', 2, NULL)
INSERT [dbo].[attendance] ([id], [date], [inTime], [out], [hour], [Name]) VALUES (N'1002', N'13-02-15', N'10:00', N'20:00', 10, NULL)
INSERT [dbo].[attendance] ([id], [date], [inTime], [out], [hour], [Name]) VALUES (N'1001', N'14-02-15', N'18:11', NULL, NULL, N'Nitish')
INSERT [dbo].[attendance] ([id], [date], [inTime], [out], [hour], [Name]) VALUES (N'1002', N'14', N'10:00', N'20:01', 8, NULL)
/****** Object:  Table [dbo].[admin]    Script Date: 02/14/2015 18:14:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[id] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[admin] ([id], [password]) VALUES (N'1', N'admin')
/****** Object:  Table [dbo].[add_emp]    Script Date: 02/14/2015 18:14:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[add_emp](
	[id] [varchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[name] [varchar](50) NULL,
	[address] [varchar](5000) NULL,
	[mobileno] [varchar](50) NULL,
	[emailid] [varchar](50) NULL,
	[department] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[add_emp] ([id], [password], [name], [address], [mobileno], [emailid], [department]) VALUES (N'1001', N'123', N'Nitish', N'mira-road', N'9768034206', N'nitish@gmail.com', N'Human Resource')
INSERT [dbo].[add_emp] ([id], [password], [name], [address], [mobileno], [emailid], [department]) VALUES (N'1002', N'maxwel', N'Max', N'malad', N'9768034208', N'max@gmail.com', N'Sales')
