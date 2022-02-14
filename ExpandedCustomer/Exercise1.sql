CREATE DATABASE [CustomerDB]
GO

USE [CustomerDB]

CREATE TABLE [Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Country] [char](2) NOT NULL,
  CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([CustomerID] ASC)
)

SET IDENTITY_INSERT [dbo].[Customers] ON

INSERT INTO [dbo].[Customers] ([CustomerID], [Name], [Age], [Country]) VALUES (1, N'Kendra', 18, N'US')

INSERT INTO [dbo].[Customers] ([CustomerID], [Name], [Age], [Country]) VALUES (2, N'Corrina', 21, N'UK')

INSERT INTO [dbo].[Customers] ([CustomerID], [Name], [Age], [Country]) VALUES (3, N'Alysa', 29, N'DE')

INSERT INTO [dbo].[Customers] ([CustomerID], [Name], [Age], [Country]) VALUES (4, N'Karla', 19, N'UK')

INSERT INTO [dbo].[Customers] ([CustomerID], [Name], [Age], [Country]) VALUES (5, N'Joi', 30, N'DE')

INSERT INTO [dbo].[Customers] ([CustomerID], [Name], [Age], [Country]) VALUES (6, N'Hector', 45, N'DE')

INSERT INTO [dbo].[Customers] ([CustomerID], [Name], [Age], [Country]) VALUES (7, N'Eleanora', 34, N'US')

INSERT INTO [dbo].[Customers] ([CustomerID], [Name], [Age], [Country]) VALUES (8, N'Tori', 51, N'US')

INSERT INTO [dbo].[Customers] ([CustomerID], [Name], [Age], [Country]) VALUES (9, N'Kevin', 64, N'DK')

INSERT INTO [dbo].[Customers] ([CustomerID], [Name], [Age], [Country]) VALUES (10, N'Michael', 26, N'DK')

INSERT INTO [dbo].[Customers] ([CustomerID], [Name], [Age], [Country]) VALUES (11, N'Ulla', 55, N'DK')

INSERT INTO [dbo].[Customers] ([CustomerID], [Name], [Age], [Country]) VALUES (12, N'Bent', 22, N'DK')

SET IDENTITY_INSERT [dbo].[Customers] OFF

-- auto-generated definition
create table Orders
(
    productID     int
        constraint Orders_Products_productID_fk
            references Products,
    OrderDateTime datetime default getdate() not null,
    count         int      default 1         not null,
    CustomerÍD    int                        not null
        constraint Orders_Customers_CustomerID_fk
            references Customers
)
go

create table Products
(
    productID   int identity
        constraint Products_pk
            primary key,
    productName varchar(50) not null,
    productType int
        constraint Products_ProductType_productTypeID_fk
            references ProductType
)
go

create table ProductType
(
    productTypeID   int identity
        constraint ProductType_pk
            primary key,
    productTypeName varchar(50) not null,
    purchasingUnit  varchar(50) not null
)
go

create unique index ProductType_productTypeName_uindex
    on ProductType (productTypeName)
go