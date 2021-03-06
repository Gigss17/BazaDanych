USE [master]
GO
/****** Object:  Database [projekt]    Script Date: 23.05.2020 16:03:23 ******/
CREATE DATABASE [projekt]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'projekt', FILENAME = N'E:\sql\MSSQL14.SQLEXPRESS\MSSQL\DATA\projekt.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'projekt_log', FILENAME = N'E:\sql\MSSQL14.SQLEXPRESS\MSSQL\DATA\projekt_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [projekt] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [projekt].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [projekt] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [projekt] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [projekt] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [projekt] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [projekt] SET ARITHABORT OFF 
GO
ALTER DATABASE [projekt] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [projekt] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [projekt] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [projekt] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [projekt] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [projekt] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [projekt] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [projekt] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [projekt] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [projekt] SET  DISABLE_BROKER 
GO
ALTER DATABASE [projekt] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [projekt] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [projekt] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [projekt] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [projekt] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [projekt] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [projekt] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [projekt] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [projekt] SET  MULTI_USER 
GO
ALTER DATABASE [projekt] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [projekt] SET DB_CHAINING OFF 
GO
ALTER DATABASE [projekt] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [projekt] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [projekt] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [projekt] SET QUERY_STORE = OFF
GO
USE [projekt]
GO
/****** Object:  Table [dbo].[Adres]    Script Date: 23.05.2020 16:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adres](
	[IDAdres] [int] IDENTITY(1,1) NOT NULL,
	[Obywatelstwo] [nvarchar](45) NULL,
	[Województwo] [nvarchar](45) NOT NULL,
	[Miasto] [nvarchar](45) NULL,
	[Ulica] [nvarchar](45) NULL,
	[NumerDomu] [nvarchar](10) NULL,
	[KodPocztowy] [nvarchar](6) NULL,
	[Poczta] [nvarchar](45) NULL,
 CONSTRAINT [PK_Adres] PRIMARY KEY CLUSTERED 
(
	[IDAdres] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Karta]    Script Date: 23.05.2020 16:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Karta](
	[IDKarta] [int] IDENTITY(1,1) NOT NULL,
	[IDKonta] [int] NULL,
	[IDTypKarty] [int] NULL,
	[NumerKarty] [nvarchar](45) NULL,
 CONSTRAINT [PK_Karta] PRIMARY KEY CLUSTERED 
(
	[IDKarta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klient]    Script Date: 23.05.2020 16:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klient](
	[IDKlienta] [int] IDENTITY(1,1) NOT NULL,
	[Imie] [nvarchar](45) NULL,
	[Nazwisko] [nvarchar](45) NULL,
	[NazwaFirmy] [nvarchar](45) NULL,
	[NIP] [nvarchar](10) NULL,
	[PESEL] [nvarchar](11) NULL,
	[PKD] [nvarchar](45) NULL,
	[NumerTelefonu] [nvarchar](9) NULL,
	[Email] [nvarchar](45) NOT NULL,
	[IDRodzajKlienta] [int] NULL,
	[IDAdres] [int] NULL,
 CONSTRAINT [PK_Klient] PRIMARY KEY CLUSTERED 
(
	[IDKlienta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Konto]    Script Date: 23.05.2020 16:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Konto](
	[IDKonta] [int] IDENTITY(1,1) NOT NULL,
	[Identyfikator] [nvarchar](10) NOT NULL,
	[Hasło] [nvarchar](10) NOT NULL,
	[NumerKonta] [nvarchar](45) NOT NULL,
	[StanKonta] [money] NOT NULL,
	[IDKlienta] [int] NULL,
	[IDRodzajKonta] [int] NULL,
 CONSTRAINT [PK_Konto] PRIMARY KEY CLUSTERED 
(
	[IDKonta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RodzajKlienta]    Script Date: 23.05.2020 16:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RodzajKlienta](
	[IDRodzajKlienta] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_RodzajKlienta] PRIMARY KEY CLUSTERED 
(
	[IDRodzajKlienta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RodzajKonta]    Script Date: 23.05.2020 16:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RodzajKonta](
	[IDRodzajKonta] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_RodzajKonta] PRIMARY KEY CLUSTERED 
(
	[IDRodzajKonta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transakcja]    Script Date: 23.05.2020 16:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transakcja](
	[IDTransakcja] [int] IDENTITY(1,1) NOT NULL,
	[DataTransakcji] [datetime] NULL,
	[Kwota] [money] NULL,
	[OpisPrzelewu] [nvarchar](500) NULL,
	[TytułTransakcji] [nvarchar](45) NOT NULL,
	[RodzajOperacji] [nchar](45) NULL,
	[RachunekNadawcy] [nvarchar](45) NOT NULL,
	[RachunekOdbiorcy] [nvarchar](45) NOT NULL,
	[IDKonta] [int] NULL,
 CONSTRAINT [PK_Transakcja] PRIMARY KEY CLUSTERED 
(
	[IDTransakcja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypKarty]    Script Date: 23.05.2020 16:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypKarty](
	[IDTypKarty] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_TypKarty] PRIMARY KEY CLUSTERED 
(
	[IDTypKarty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Karta]  WITH CHECK ADD  CONSTRAINT [FK_Karta_Konto1] FOREIGN KEY([IDKonta])
REFERENCES [dbo].[Konto] ([IDKonta])
GO
ALTER TABLE [dbo].[Karta] CHECK CONSTRAINT [FK_Karta_Konto1]
GO
ALTER TABLE [dbo].[Karta]  WITH CHECK ADD  CONSTRAINT [FK_Karta_TypKarty] FOREIGN KEY([IDTypKarty])
REFERENCES [dbo].[TypKarty] ([IDTypKarty])
GO
ALTER TABLE [dbo].[Karta] CHECK CONSTRAINT [FK_Karta_TypKarty]
GO
ALTER TABLE [dbo].[Klient]  WITH CHECK ADD  CONSTRAINT [FK_Klient_Adres] FOREIGN KEY([IDAdres])
REFERENCES [dbo].[Adres] ([IDAdres])
GO
ALTER TABLE [dbo].[Klient] CHECK CONSTRAINT [FK_Klient_Adres]
GO
ALTER TABLE [dbo].[Klient]  WITH CHECK ADD  CONSTRAINT [FK_Klient_RodzajKlienta1] FOREIGN KEY([IDRodzajKlienta])
REFERENCES [dbo].[RodzajKlienta] ([IDRodzajKlienta])
GO
ALTER TABLE [dbo].[Klient] CHECK CONSTRAINT [FK_Klient_RodzajKlienta1]
GO
ALTER TABLE [dbo].[Konto]  WITH CHECK ADD  CONSTRAINT [FK_Konto_Klient] FOREIGN KEY([IDKlienta])
REFERENCES [dbo].[Klient] ([IDKlienta])
GO
ALTER TABLE [dbo].[Konto] CHECK CONSTRAINT [FK_Konto_Klient]
GO
ALTER TABLE [dbo].[Konto]  WITH CHECK ADD  CONSTRAINT [FK_Konto_RodzajKonta] FOREIGN KEY([IDRodzajKonta])
REFERENCES [dbo].[RodzajKonta] ([IDRodzajKonta])
GO
ALTER TABLE [dbo].[Konto] CHECK CONSTRAINT [FK_Konto_RodzajKonta]
GO
ALTER TABLE [dbo].[Transakcja]  WITH CHECK ADD  CONSTRAINT [FK_Transakcja_Konto] FOREIGN KEY([IDKonta])
REFERENCES [dbo].[Konto] ([IDKonta])
GO
ALTER TABLE [dbo].[Transakcja] CHECK CONSTRAINT [FK_Transakcja_Konto]
GO
ALTER TABLE [dbo].[Adres]  WITH CHECK ADD  CONSTRAINT [Adres.Województwo] CHECK  (([Województwo]='dolnośląskie' OR [Województwo]='kujawsko-pomorskie' OR [Województwo]='lubelskie' OR [Województwo]='lubuskie' OR [Województwo]='łódzkie' OR [Województwo]='małopolskie' OR [Województwo]='mazowieckie' OR [Województwo]='opolskie' OR [Województwo]='podkarpackie' OR [Województwo]='podlaskie' OR [Województwo]='pomorskie' OR [Województwo]='śląskie' OR [Województwo]='świętokrzyskie' OR [Województwo]='warmińsko-mazurskie' OR [Województwo]='wielkopolskie' OR [Województwo]='zachodniopomorskie'))
GO
ALTER TABLE [dbo].[Adres] CHECK CONSTRAINT [Adres.Województwo]
GO
ALTER TABLE [dbo].[RodzajKlienta]  WITH CHECK ADD  CONSTRAINT [RodzajKlienta.Nazwa] CHECK  (([Nazwa]='KI' OR [Nazwa]='KB'))
GO
ALTER TABLE [dbo].[RodzajKlienta] CHECK CONSTRAINT [RodzajKlienta.Nazwa]
GO
ALTER TABLE [dbo].[RodzajKonta]  WITH CHECK ADD  CONSTRAINT [RodzajKonta.Nazwa] CHECK  (([Nazwa]='Konto osobiste' OR [Nazwa]='konto firmowe' OR [Nazwa]='konto oszczędnościowe' OR [Nazwa]='konto konto walutowe' OR [Nazwa]='konto młodzieżowe'))
GO
ALTER TABLE [dbo].[RodzajKonta] CHECK CONSTRAINT [RodzajKonta.Nazwa]
GO
ALTER TABLE [dbo].[Transakcja]  WITH CHECK ADD  CONSTRAINT [RodzajOperacji] CHECK  (([RodzajOperacji]='Przelew Ekspresowy' OR [RodzajOperacji]='Przelew Standardowy' OR [RodzajOperacji]='Przelew Zagraniczny' OR [RodzajOperacji]='Przelew Własny' OR [RodzajOperacji]='Wypłata' OR [RodzajOperacji]='Wpłata na konto'))
GO
ALTER TABLE [dbo].[Transakcja] CHECK CONSTRAINT [RodzajOperacji]
GO
ALTER TABLE [dbo].[TypKarty]  WITH CHECK ADD  CONSTRAINT [Nazwy] CHECK  (([Nazwa]='blik' OR [Nazwa]='karta zbliżeniowa' OR [Nazwa]='karta zwykła' OR [Nazwa]='karta debetowa' OR [Nazwa]='karta obciążeniowa'))
GO
ALTER TABLE [dbo].[TypKarty] CHECK CONSTRAINT [Nazwy]
GO
/****** Object:  StoredProcedure [dbo].[Przelewy]    Script Date: 23.05.2020 16:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Przelewy] @data1 as datetime = null, @data2 as datetime=null, @idkonta as int
AS
	IF (@data1 is null or @data2 is null)
	BEGIN
	SELECT * from Transakcja
	WHERE (IDKonta = @idkonta) and ((RodzajOperacji = 'przelew standardowy') or (RodzajOperacji ='przelew ekspresowy') or (RodzajOperacji = 'przelew zagraniczny') or (RodzajOperacji ='przelew własny'))
	ORDER BY DataTransakcji desc
	END
	IF (@data1 > @data2)
	BEGIN
	RAISERROR('Nieprawodiłowe daty',14,1)
	RETURN
	END


	SELECT * from Transakcja
	WHERE (IDKonta = @idkonta) and ((RodzajOperacji = 'przelew standardowy') or (RodzajOperacji ='przelew ekspresowy') or (RodzajOperacji = 'przelew zagraniczny') or (RodzajOperacji ='przelew własny')) and (DataTransakcji BETWEEN @data1 and @data2)
	ORDER BY DataTransakcji asc
GO
/****** Object:  StoredProcedure [dbo].[StanKonta]    Script Date: 23.05.2020 16:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[StanKonta] @idkonta as int
AS
	
	IF (@idkonta is null)
	BEGIN
	RAISERROR('Nieprawodiłowe dane',14,1)
	RETURN
	END


	SELECT stankonta from Konto
	WHERE (IDKonta = @idkonta) 
GO
/****** Object:  StoredProcedure [dbo].[Wpłaty]    Script Date: 23.05.2020 16:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Wpłaty] @data1 as datetime = null, @data2 as datetime=null, @idkonta as int
AS
	IF (@data1 is null or @data2 is null)
	BEGIN
	SELECT * from Transakcja
	WHERE (IDKonta = @idkonta) and (RodzajOperacji = 'wpłata na konto')
	ORDER BY DataTransakcji desc
	END
	IF (@data1 > @data2)
	BEGIN
	RAISERROR('Nieprawodiłowe daty',14,1)
	RETURN
	END


	SELECT * from Transakcja
	WHERE (IDKonta = @idkonta) and (RodzajOperacji = 'wpłata na konto') and (DataTransakcji BETWEEN @data1 and @data2)
	ORDER BY DataTransakcji asc
GO
/****** Object:  StoredProcedure [dbo].[Wypłaty]    Script Date: 23.05.2020 16:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Wypłaty] @data1 as datetime = null, @data2 as datetime=null, @idkonta as int
AS
	IF (@data1 is null or @data2 is null)
	BEGIN
	SELECT * from Transakcja
	WHERE (IDKonta = @idkonta) and (RodzajOperacji = 'wypłata')
	ORDER BY DataTransakcji desc
	END
	IF (@data1 > @data2)
	BEGIN
	RAISERROR('Nieprawodiłowe daty',14,1)
	RETURN
	END


	SELECT * from Transakcja
	WHERE (IDKonta = @idkonta) and (RodzajOperacji = 'wypłata') and (DataTransakcji BETWEEN @data1 and @data2)
	ORDER BY DataTransakcji asc
GO
USE [master]
GO
ALTER DATABASE [projekt] SET  READ_WRITE 
GO
