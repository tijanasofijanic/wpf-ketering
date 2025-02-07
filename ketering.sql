USE [master]
GO
/****** Object:  Database [ketering]    Script Date: 2/7/2025 10:47:21 PM ******/
CREATE DATABASE [ketering]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ketering', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ketering.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ketering_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ketering_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ketering] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ketering].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ketering] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ketering] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ketering] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ketering] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ketering] SET ARITHABORT OFF 
GO
ALTER DATABASE [ketering] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ketering] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ketering] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ketering] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ketering] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ketering] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ketering] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ketering] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ketering] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ketering] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ketering] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ketering] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ketering] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ketering] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ketering] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ketering] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ketering] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ketering] SET RECOVERY FULL 
GO
ALTER DATABASE [ketering] SET  MULTI_USER 
GO
ALTER DATABASE [ketering] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ketering] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ketering] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ketering] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ketering] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ketering] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ketering', N'ON'
GO
ALTER DATABASE [ketering] SET QUERY_STORE = ON
GO
ALTER DATABASE [ketering] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ketering]
GO
/****** Object:  Table [dbo].[jela]    Script Date: 2/7/2025 10:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jela](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[naziv] [nvarchar](50) NOT NULL,
	[opis] [nvarchar](255) NOT NULL,
	[slika] [nvarchar](255) NOT NULL,
	[cena] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_jela] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[korisnici]    Script Date: 2/7/2025 10:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[korisnici](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ime] [nvarchar](50) NOT NULL,
	[prezime] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[adresa] [nvarchar](50) NOT NULL,
	[grad] [nvarchar](50) NOT NULL,
	[telefon] [nvarchar](50) NOT NULL,
	[korisnickoIme] [nvarchar](50) NOT NULL,
	[lozinka] [nvarchar](50) NOT NULL,
	[idUloge] [int] NOT NULL,
 CONSTRAINT [PK_korisnici] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[porudzbine]    Script Date: 2/7/2025 10:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[porudzbine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idKorisnik] [int] NOT NULL,
	[datum] [datetime] NOT NULL,
	[idStatus] [int] NOT NULL,
 CONSTRAINT [PK_porudzbine] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 2/7/2025 10:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[naziv] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stavkePorudzbine]    Script Date: 2/7/2025 10:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stavkePorudzbine](
	[idPorudzbine] [int] NOT NULL,
	[idJela] [int] NOT NULL,
	[kolicina] [int] NOT NULL,
 CONSTRAINT [PK_StavkePorudzbine] PRIMARY KEY CLUSTERED 
(
	[idPorudzbine] ASC,
	[idJela] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[uloge]    Script Date: 2/7/2025 10:47:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uloge](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[naziv] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_uloge] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ketering] SET  READ_WRITE 
GO
