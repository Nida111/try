USE [master]
GO
/****** Object:  Database [DB22]    Script Date: 4/13/2019 4:10:09 PM ******/
CREATE DATABASE [DB22]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB22', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DB22.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB22_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DB22_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB22] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB22].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB22] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB22] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB22] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB22] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB22] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB22] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB22] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DB22] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB22] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB22] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB22] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB22] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB22] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB22] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB22] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB22] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB22] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB22] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB22] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB22] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB22] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB22] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB22] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB22] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB22] SET  MULTI_USER 
GO
ALTER DATABASE [DB22] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB22] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB22] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB22] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DB22]
GO
/****** Object:  Table [DB22].[AdminOrder]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminOrder](
	[OrderId] [int] NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AdminOrder] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminOrderDetail]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminOrderDetail](
	[OrderId] [int] NOT NULL,
	[SupplierId] [int] NOT NULL,
	[SuppItemId] [int] NOT NULL,
	[Paymnet] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AssignOrder]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AssignOrder](
	[DelivererId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[DeliveryTime] [datetime] NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AssignOrder] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Chef]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Chef](
	[ChefId] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NULL,
 CONSTRAINT [PK_Chef] PRIMARY KEY CLUSTERED 
(
	[ChefId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NULL,
	[Address] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeliveryTeam]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeliveryTeam](
	[DelivererId] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NULL,
 CONSTRAINT [PK_DeliveryTeam] PRIMARY KEY CLUSTERED 
(
	[DelivererId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemsDetail]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemsDetail](
	[ItemId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ItemsDetail] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemQuantity] [int] NOT NULL,
	[Payment] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PassOrder]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PassOrder](
	[ChefId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[PreparationTime] [datetime] NOT NULL,
 CONSTRAINT [PK_PassOrder] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PlaceOrder]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlaceOrder](
	[CustomerId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PlaceOrder] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierId] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SupplierCategory]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SupplierCategory](
	[CatId] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[SupplierId] [int] NOT NULL,
 CONSTRAINT [PK_SupplierCategory] PRIMARY KEY CLUSTERED 
(
	[CatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SupplierItems]    Script Date: 4/13/2019 4:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SupplierItems](
	[ItemId] [int] NOT NULL,
	[CatId] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Description] [varchar](max) NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_SupplierItems] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO

ALTER TABLE [dbo].[ItemsDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ItemsDetail_dbo.Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
ON DELETE CASCADE
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ItemsDetail] CHECK CONSTRAINT [FK_dbo.ItemsDetail_dbo.Category_CategoryId]
GO

ALTER TABLE [dbo].[PlaceOrder]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PlaceOrder_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
ON DELETE CASCADE
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PlaceOrder] CHECK CONSTRAINT [FK_dbo.PlaceOrder_dbo.Customer_CustomerId]
GO

ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetail_dbo.PlaceOrder_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[PlaceOrder] ([OrderId])
ON DELETE CASCADE
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_dbo.OrderDetail_dbo.PlaceOrder_OrderId]
GO

ALTER TABLE [dbo].[PassOrder]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PassOrder_dbo.Chef_ChefId] FOREIGN KEY([ChefId])
REFERENCES [dbo].[Chef] ([ChefId])
ON DELETE CASCADE
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PassOrder] CHECK CONSTRAINT [FK_dbo.PassOrder_dbo.Chef_ChefId]
GO

ALTER TABLE [dbo].[PassOrder]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PassOrder_dbo.ItemsDetail_ItemId] FOREIGN KEY([ItemId])
REFERENCES [dbo].[ItemsDetail] ([ItemId])
ON DELETE CASCADE
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PassOrder] CHECK CONSTRAINT [FK_dbo.PassOrder_dbo.ItemsDetail_ItemId]
GO

ALTER TABLE [dbo].[AssignOrder]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AssignOrder_dbo.DeliveryTeam_DelivererId] FOREIGN KEY([DelivererId])
REFERENCES [dbo].[DeliveryTeam] ([DelivererId])
ON DELETE CASCADE
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[AssignOrder] CHECK CONSTRAINT [FK_dbo.AssignOrder_dbo.DeliveryTeam_DelivererId]
GO

ALTER TABLE [dbo].[AssignOrder]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AssignOrder_dbo.PlaceOrder_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[PlaceOrder] ([OrderId])
ON DELETE CASCADE
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[AssignOrder] CHECK CONSTRAINT [FK_dbo.AssignOrder_dbo.PlaceOrder_OrderId]
GO

ALTER TABLE [dbo].[SupplierItems]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SupplierItems_dbo.SupplierCategory_CatId] FOREIGN KEY([CatId])
REFERENCES [dbo].[SupplierCategory] ([CatId])
ON DELETE CASCADE
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SupplierItems] CHECK CONSTRAINT [FK_dbo.SupplierItems_dbo.SupplierCategory_CatId]
GO

ALTER TABLE [dbo].[AdminOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdminOrderDetail_dbo.AdminOrder_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[AdminOrder] ([OrderId])
ON DELETE CASCADE
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[AdminOrderDetail] CHECK CONSTRAINT [FK_dbo.AdminOrderDetail_dbo.AdminOrder_OrderId]
GO

ALTER TABLE [dbo].[AdminOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdminOrderDetail_dbo.SupplierItems_SuppItemId] FOREIGN KEY([SuppItemId])
REFERENCES [dbo].[SupplierItems] ([ItemId])
ON DELETE CASCADE
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[AdminOrderDetail] CHECK CONSTRAINT [FK_dbo.AdminOrderDetail_dbo.SupplierItems_SuppItemId]
GO

ALTER TABLE [dbo].[AdminOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AdminOrderDetail_dbo.Supplier_SupplierId] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
ON DELETE CASCADE
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[AdminOrderDetail] CHECK CONSTRAINT [FK_dbo.AdminOrderDetail_dbo.Supplier_SupplierId]
GO

ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [DB22] SET  READ_WRITE 
GO
