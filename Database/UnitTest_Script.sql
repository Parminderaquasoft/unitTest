USE [master]
GO
/****** Object:  Database [UnitTest]    Script Date: 3/1/2017 11:05:39 AM ******/
CREATE DATABASE [UnitTest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UnitTest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\UnitTest.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'UnitTest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\UnitTest_log.ldf' , SIZE = 560KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [UnitTest] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UnitTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UnitTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UnitTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UnitTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UnitTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UnitTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [UnitTest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UnitTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UnitTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UnitTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UnitTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UnitTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UnitTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UnitTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UnitTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UnitTest] SET  ENABLE_BROKER 
GO
ALTER DATABASE [UnitTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UnitTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UnitTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UnitTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UnitTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UnitTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UnitTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UnitTest] SET RECOVERY FULL 
GO
ALTER DATABASE [UnitTest] SET  MULTI_USER 
GO
ALTER DATABASE [UnitTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UnitTest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UnitTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UnitTest] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [UnitTest] SET DELAYED_DURABILITY = DISABLED 
GO
USE [UnitTest]
GO
/****** Object:  Table [dbo].[Orderstable]    Script Date: 3/1/2017 11:05:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orderstable](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[Address] [varchar](max) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[Zip] [varchar](250) NULL,
	[Email] [varchar](100) NULL,
	[CardExpirationMonth] [int] NULL,
	[CardExpirationYear] [int] NULL,
	[CardSecurityCode] [int] NULL,
	[Price] [numeric](18, 0) NULL,
	[Status] [int] NULL,
	[Phone] [varchar](50) NULL,
	[CardNumber] [varchar](100) NULL,
	[ProductId] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Orderstable] ON 

INSERT [dbo].[Orderstable] ([OrderId], [FirstName], [LastName], [Address], [City], [State], [Zip], [Email], [CardExpirationMonth], [CardExpirationYear], [CardSecurityCode], [Price], [Status], [Phone], [CardNumber], [ProductId]) VALUES (1, N'Parminder', N'Singh', N'Mohali', N'Mohali', N'PB', N'140301', N'parminder@gmail.com', 4, 2017, 123, CAST(120 AS Numeric(18, 0)), 1, N'9914094419', N'1234567891234567', N'1')
INSERT [dbo].[Orderstable] ([OrderId], [FirstName], [LastName], [Address], [City], [State], [Zip], [Email], [CardExpirationMonth], [CardExpirationYear], [CardSecurityCode], [Price], [Status], [Phone], [CardNumber], [ProductId]) VALUES (3, N'test', N'test', N'test', N'test', N'test', N'685484', N'test@gmail.com', 1, 2017, 123, CAST(120 AS Numeric(18, 0)), 2, N'9876897897', N'1234567891234566', N'1')
SET IDENTITY_INSERT [dbo].[Orderstable] OFF
USE [master]
GO
ALTER DATABASE [UnitTest] SET  READ_WRITE 
GO
