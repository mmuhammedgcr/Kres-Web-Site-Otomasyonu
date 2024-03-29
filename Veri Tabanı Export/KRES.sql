USE [KRES]
GO
ALTER TABLE [dbo].[Cocuk] DROP CONSTRAINT [FK_Cocuk_Veli]
GO
ALTER TABLE [dbo].[Cocuk] DROP CONSTRAINT [FK_Cocuk_Bakici]
GO
ALTER TABLE [dbo].[Bakici] DROP CONSTRAINT [FK_Bakici_Sinif]
GO
/****** Object:  Table [dbo].[Veli]    Script Date: 10.1.2018 00:40:17 ******/
DROP TABLE [dbo].[Veli]
GO
/****** Object:  Table [dbo].[Sinif]    Script Date: 10.1.2018 00:40:17 ******/
DROP TABLE [dbo].[Sinif]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 10.1.2018 00:40:17 ******/
DROP TABLE [dbo].[Kullanicilar]
GO
/****** Object:  Table [dbo].[iletisim]    Script Date: 10.1.2018 00:40:17 ******/
DROP TABLE [dbo].[iletisim]
GO
/****** Object:  Table [dbo].[Cocuk]    Script Date: 10.1.2018 00:40:17 ******/
DROP TABLE [dbo].[Cocuk]
GO
/****** Object:  Table [dbo].[Bakici]    Script Date: 10.1.2018 00:40:17 ******/
DROP TABLE [dbo].[Bakici]
GO
USE [master]
GO
/****** Object:  Database [KRES]    Script Date: 10.1.2018 00:40:17 ******/
DROP DATABASE [KRES]
GO
/****** Object:  Database [KRES]    Script Date: 10.1.2018 00:40:17 ******/
CREATE DATABASE [KRES]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KRES', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\KRES.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KRES_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\KRES_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [KRES] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KRES].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KRES] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KRES] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KRES] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KRES] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KRES] SET ARITHABORT OFF 
GO
ALTER DATABASE [KRES] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KRES] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KRES] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KRES] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KRES] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KRES] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KRES] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KRES] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KRES] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KRES] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KRES] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KRES] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KRES] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KRES] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KRES] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KRES] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KRES] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KRES] SET RECOVERY FULL 
GO
ALTER DATABASE [KRES] SET  MULTI_USER 
GO
ALTER DATABASE [KRES] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KRES] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KRES] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KRES] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KRES] SET DELAYED_DURABILITY = DISABLED 
GO
USE [KRES]
GO
/****** Object:  Table [dbo].[Bakici]    Script Date: 10.1.2018 00:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bakici](
	[TcNo] [nvarchar](11) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[CepTel] [nvarchar](50) NULL,
	[Adres] [nvarchar](150) NULL,
	[Sifre] [nvarchar](50) NULL,
	[SinifID] [int] NULL,
 CONSTRAINT [PK_Bakici] PRIMARY KEY CLUSTERED 
(
	[TcNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cocuk]    Script Date: 10.1.2018 00:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cocuk](
	[Tcno] [nvarchar](11) NOT NULL,
	[VeliTcNo] [nvarchar](11) NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[DogumTarihi] [nvarchar](50) NULL,
	[SaglikDurumu] [nvarchar](250) NULL,
	[Boyu] [nvarchar](3) NULL,
	[Kilosu] [nvarchar](2) NULL,
	[Aciklama] [nvarchar](500) NULL,
	[Cinsiyet] [nvarchar](1) NULL,
	[BakiciTcNo] [nvarchar](11) NULL,
 CONSTRAINT [PK_Cocuk] PRIMARY KEY CLUSTERED 
(
	[Tcno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[iletisim]    Script Date: 10.1.2018 00:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iletisim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[mesaj] [nvarchar](500) NULL,
 CONSTRAINT [PK_iletisim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 10.1.2018 00:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[TcNo] [nvarchar](11) NOT NULL,
	[Sifre] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sinif]    Script Date: 10.1.2018 00:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinif](
	[SinifID] [int] IDENTITY(1,1) NOT NULL,
	[SinifAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sinif] PRIMARY KEY CLUSTERED 
(
	[SinifID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Veli]    Script Date: 10.1.2018 00:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Veli](
	[TcNo] [nvarchar](11) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[CepTel] [nvarchar](15) NULL,
	[Adres] [nvarchar](250) NULL,
	[MedeniHali] [nvarchar](5) NULL,
	[DogumTarihi] [nvarchar](50) NULL,
	[Cinsiyet] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Veli] PRIMARY KEY CLUSTERED 
(
	[TcNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Bakici] ([TcNo], [Adi], [Soyadi], [CepTel], [Adres], [Sifre], [SinifID]) VALUES (N'26265266123', N'ali', N'deli', N'05072251425', N'izmir', N'23232', NULL)
INSERT [dbo].[Bakici] ([TcNo], [Adi], [Soyadi], [CepTel], [Adres], [Sifre], [SinifID]) VALUES (N'56262662', N'fatih', N'bal', N'05012547896', N'kayseri', N'35265.,*0rg', NULL)
INSERT [dbo].[Bakici] ([TcNo], [Adi], [Soyadi], [CepTel], [Adres], [Sifre], [SinifID]) VALUES (N'5626526526', N'zeynep', N'gergin', N'05254121458', N'istanbul', N'32326fg2gf', NULL)
INSERT [dbo].[Bakici] ([TcNo], [Adi], [Soyadi], [CepTel], [Adres], [Sifre], [SinifID]) VALUES (N'652652626', N'elif', N'ali', N'05072251425', N'ankara', N'4*.şi,g5', NULL)
INSERT [dbo].[Kullanicilar] ([TcNo], [Sifre]) VALUES (N'admin', N'123')
SET IDENTITY_INSERT [dbo].[Sinif] ON 

INSERT [dbo].[Sinif] ([SinifID], [SinifAdi]) VALUES (1, N'dfg')
INSERT [dbo].[Sinif] ([SinifID], [SinifAdi]) VALUES (2, N'eşek sıpaları')
INSERT [dbo].[Sinif] ([SinifID], [SinifAdi]) VALUES (3, N'veletler')
INSERT [dbo].[Sinif] ([SinifID], [SinifAdi]) VALUES (4, N'fsdg')
SET IDENTITY_INSERT [dbo].[Sinif] OFF
ALTER TABLE [dbo].[Bakici]  WITH CHECK ADD  CONSTRAINT [FK_Bakici_Sinif] FOREIGN KEY([SinifID])
REFERENCES [dbo].[Sinif] ([SinifID])
GO
ALTER TABLE [dbo].[Bakici] CHECK CONSTRAINT [FK_Bakici_Sinif]
GO
ALTER TABLE [dbo].[Cocuk]  WITH CHECK ADD  CONSTRAINT [FK_Cocuk_Bakici] FOREIGN KEY([BakiciTcNo])
REFERENCES [dbo].[Bakici] ([TcNo])
GO
ALTER TABLE [dbo].[Cocuk] CHECK CONSTRAINT [FK_Cocuk_Bakici]
GO
ALTER TABLE [dbo].[Cocuk]  WITH CHECK ADD  CONSTRAINT [FK_Cocuk_Veli] FOREIGN KEY([VeliTcNo])
REFERENCES [dbo].[Veli] ([TcNo])
GO
ALTER TABLE [dbo].[Cocuk] CHECK CONSTRAINT [FK_Cocuk_Veli]
GO
USE [master]
GO
ALTER DATABASE [KRES] SET  READ_WRITE 
GO
