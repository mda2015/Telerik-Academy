USE [master]
GO
/****** Object:  Database [Univeristy]    Script Date: 7/12/2013 11:56:11 AM ******/
CREATE DATABASE [Univeristy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Univeristy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Univeristy.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Univeristy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Univeristy_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Univeristy] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Univeristy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Univeristy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Univeristy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Univeristy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Univeristy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Univeristy] SET ARITHABORT OFF 
GO
ALTER DATABASE [Univeristy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Univeristy] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Univeristy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Univeristy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Univeristy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Univeristy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Univeristy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Univeristy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Univeristy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Univeristy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Univeristy] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Univeristy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Univeristy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Univeristy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Univeristy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Univeristy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Univeristy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Univeristy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Univeristy] SET RECOVERY FULL 
GO
ALTER DATABASE [Univeristy] SET  MULTI_USER 
GO
ALTER DATABASE [Univeristy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Univeristy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Univeristy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Univeristy] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Univeristy', N'ON'
GO
USE [Univeristy]
GO
/****** Object:  Table [dbo].[AcademicTitles]    Script Date: 7/12/2013 11:56:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademicTitles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](20) NOT NULL,
	[Professor_Id] [int] NOT NULL,
 CONSTRAINT [PK_AcademicTitles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Courses]    Script Date: 7/12/2013 11:56:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](20) NOT NULL,
	[Professor_Id] [int] NOT NULL,
	[Department_Id] [int] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departments]    Script Date: 7/12/2013 11:56:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](20) NOT NULL,
	[Faculty_Id] [int] NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 7/12/2013 11:56:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Faculties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Professors]    Script Date: 7/12/2013 11:56:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](30) NOT NULL,
	[Department_Id] [int] NOT NULL,
 CONSTRAINT [PK_Professors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 7/12/2013 11:56:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](30) NOT NULL,
	[Faculty_Id] [int] NOT NULL,
	[Course_Id] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AcademicTitles]  WITH CHECK ADD  CONSTRAINT [FK_AcademicTitles_Professors] FOREIGN KEY([Professor_Id])
REFERENCES [dbo].[Professors] ([Id])
GO
ALTER TABLE [dbo].[AcademicTitles] CHECK CONSTRAINT [FK_AcademicTitles_Professors]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Departments] FOREIGN KEY([Department_Id])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Departments]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Professors] FOREIGN KEY([Professor_Id])
REFERENCES [dbo].[Professors] ([Id])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Professors]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_Faculties] FOREIGN KEY([Faculty_Id])
REFERENCES [dbo].[Faculties] ([Id])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_Faculties]
GO
ALTER TABLE [dbo].[Professors]  WITH CHECK ADD  CONSTRAINT [FK_Professors_Departments] FOREIGN KEY([Department_Id])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Professors] CHECK CONSTRAINT [FK_Professors_Departments]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Courses] FOREIGN KEY([Course_Id])
REFERENCES [dbo].[Courses] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Courses]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Faculties] FOREIGN KEY([Faculty_Id])
REFERENCES [dbo].[Faculties] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Faculties]
GO
USE [master]
GO
ALTER DATABASE [Univeristy] SET  READ_WRITE 
GO
