USE [master]
GO
/****** Object:  Database [managementsystem]    Script Date: 12-05-2020 10:35:31 ******/
CREATE DATABASE [managementsystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'managementsystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\managementsystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'managementsystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\managementsystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [managementsystem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [managementsystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [managementsystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [managementsystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [managementsystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [managementsystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [managementsystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [managementsystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [managementsystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [managementsystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [managementsystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [managementsystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [managementsystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [managementsystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [managementsystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [managementsystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [managementsystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [managementsystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [managementsystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [managementsystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [managementsystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [managementsystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [managementsystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [managementsystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [managementsystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [managementsystem] SET  MULTI_USER 
GO
ALTER DATABASE [managementsystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [managementsystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [managementsystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [managementsystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [managementsystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [managementsystem] SET QUERY_STORE = OFF
GO
USE [managementsystem]
GO
/****** Object:  Table [dbo].[faculty]    Script Date: 12-05-2020 10:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[faculty](
	[facultyName] [varchar](30) NULL,
	[facultyId] [nvarchar](10) NULL,
	[gender] [varchar](10) NULL,
	[course] [varchar](max) NULL,
	[tSemester] [varchar](30) NULL,
	[Degree] [varchar](max) NULL,
	[cityandstate] [varchar](50) NULL,
	[Contact] [nvarchar](50) NULL,
	[Email] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculty_Documents]    Script Date: 12-05-2020 10:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty_Documents](
	[facultyName] [varchar](30) NULL,
	[facultyId] [int] NOT NULL,
	[profileimg] [nvarchar](max) NULL,
	[aadharcard] [nvarchar](max) NULL,
	[othercard1] [nvarchar](max) NULL,
	[othercard2] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[facultyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 12-05-2020 10:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[StudentName] [varchar](30) NULL,
	[StudentId] [int] NOT NULL,
	[Gender] [varchar](10) NULL,
	[Branch] [varchar](max) NULL,
	[Semester] [varchar](10) NULL,
	[StudAddress] [varchar](max) NULL,
	[Cityandstate] [varchar](50) NULL,
	[contact] [nvarchar](50) NULL,
	[email] [varchar](max) NULL,
	[ssc] [int] NULL,
	[hsc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Documents]    Script Date: 12-05-2020 10:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Documents](
	[StudentName] [varchar](30) NULL,
	[StudentId] [int] NOT NULL,
	[profileimg] [nvarchar](max) NULL,
	[aadharimg] [nvarchar](max) NULL,
	[sscimg] [nvarchar](max) NULL,
	[hscimg] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [managementsystem] SET  READ_WRITE 
GO
