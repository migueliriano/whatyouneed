CREATE DATABASE whatyouneed
GO
USE whatyouneed

CREATE TABLE [dbo].[Countries](
[CountryId][int] NOT NULL,
[Description][varchar](100) NOT NULL,
CONSTRAINT [PK_CountryId] PRIMARY KEY (CountryId)
)
GO

CREATE TABLE [dbo].[States](
[StateId][int] NOT NULL,
[CountryId][int] NOT NULL,
[StateDescription][varchar](100) NOT NULL,
CONSTRAINT [PK_StateId] PRIMARY KEY (StateId),
CONSTRAINT [FK_CountryIdToStates] FOREIGN KEY (CountryId)
REFERENCES [dbo].[Countries] ([CountryId])
)
GO

CREATE TABLE [dbo].[AccountType](
[AccountId][int] NOT NULL,
[Description][varchar](30),
CONSTRAINT [PK_AccountId] PRIMARY KEY (AccountId)
)
GO

CREATE TABLE [dbo].[User](	
	[UserId] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[LastName][varchar](80) NOT NULL,
	[UserName][varchar](20) NOT NULL,
	[PhoneNumber][varchar](13),
	[Address][varchar](100),
	[CountryId][int] NOT NULL,
	[StateId][int] NOT NULL,
	[City][varchar](30),
	[Password][varchar](100) NOT NULL,
	[AccountId][int] NOT NULL,
	[ProfileImage][varchar](100),
	[SecurityQuestion][varchar](80) NOT NULL,
	[Answer][varchar](80) NOT NULL,
	[AccountState] [varchar],
 CONSTRAINT [PK_UserId] PRIMARY KEY (UserId),
 CONSTRAINT [FK_CountryIdToUser] FOREIGN KEY (CountryId)
 REFERENCES [dbo].[Countries] ([CountryId]),
 CONSTRAINT [FK_StateIdToUser] FOREIGN KEY (StateId)
 REFERENCES [dbo].[States] ([StateId]),
 CONSTRAINT [FK_AccountIdToUser] FOREIGN KEY (AccountId)
 REFERENCES [dbo].[AccountType] ([AccountId]),
)
GO

CREATE TABLE [dbo].[CurrencyTypes](
[CurrencyTypeId][int] NOT NULL,
[Description][varchar](10) NOT NULL
CONSTRAINT [PK_CurrencyTypeId] PRIMARY KEY (CurrencyTypeId)
)
GO

CREATE TABLE [dbo].[Conditions](
[ConditionId][int] NOT NULL,
[Description][varchar](10) NOT NULL
CONSTRAINT [PK_ConditionId] PRIMARY KEY (ConditionId)
)
GO

CREATE TABLE [dbo].[Categories](
[CategoryId][int] NOT NULL,
[Description][varchar](10) NOT NULL,
[CategoryParent][int] NOT NULL
CONSTRAINT [PK_CategoryId] PRIMARY KEY (CategoryId)
)
GO

CREATE TABLE [dbo].[Services](
[ServiceId][int] NOT NULL,
[Description][varchar](10) NOT NULL
CONSTRAINT [PK_ServiceId] PRIMARY KEY (ServiceId)
)
GO

CREATE TABLE [dbo].[Brands](
[BrandId][int] NOT NULL,
[Description][varchar](10) NOT NULL
CONSTRAINT [PK_BrandId] PRIMARY KEY (BrandId)
)
GO

CREATE TABLE [dbo].[Product](
[ProductId][varchar](10) NOT NULL,
[Description][varchar](30) NOT NULL,
[CountryId][int] NOT NULL,
[StateId][int] NOT NULL,
[Price][money] NOT NULL,
[CurrencyTypeId][int] NOT NULL,
[ConditionId][int] NOT NULL,
[Stock][int] NOT NULL,
[CategoryId][int] NOT NULL,
[ServiceId][int] NOT NULL,
[BrandId][int] NOT NULL,
[UserId][varchar](50) NOT NULL
CONSTRAINT [PK_ProductId] PRIMARY KEY (ProductId),
CONSTRAINT [FK_CountryIdToProduct] FOREIGN KEY (CountryId)
REFERENCES [dbo].[Countries] ([CountryId]),
CONSTRAINT [FK_StateIdToProduct] FOREIGN KEY (StateId)
REFERENCES [dbo].[States] ([StateId]),
CONSTRAINT [FK_ConditionIdToProduct] FOREIGN KEY (ConditionId)
REFERENCES [dbo].[Conditions] ([ConditionId]),
CONSTRAINT [FK_CategoryIdToProduct] FOREIGN KEY (CategoryId)
REFERENCES [dbo].[Categories] ([CategoryId]),
CONSTRAINT [FK_ServiceIdToProduct] FOREIGN KEY (ServiceId)
REFERENCES [dbo].[Services] ([ServiceId]),
CONSTRAINT [FK_BrandIdIdToProduct] FOREIGN KEY (BrandId)
REFERENCES [dbo].[Brands] ([BrandId]),
CONSTRAINT [FK_CurrencyTypeIdToProduct] FOREIGN KEY (CurrencyTypeId)
REFERENCES [dbo].[CurrencyTypes] ([CurrencyTypeId]),
CONSTRAINT [FK_UserIdToProduct] FOREIGN KEY (UserId)
REFERENCES [dbo].[User] ([UserId])
)
GO

CREATE TABLE [dbo].[ProductImages](
[ImageId][int] NOT NULL,
[ProductId][varchar](10) NOT NULL,
[Images][varchar](100) NOT NULL
CONSTRAINT [PK_ImageId] PRIMARY KEY (ImageId),
CONSTRAINT [FK_ProductIdToImage] FOREIGN KEY (ProductId)
REFERENCES [dbo].[Product] ([ProductId])
)
GO

CREATE TABLE [dbo].[PayModes](
[PayModeId][int] NOT NULL,
[Description][varchar](10) NOT NULL,
[MonetaryInstitution][varchar](20) NOT NULL
CONSTRAINT [PK_PayModeId] PRIMARY KEY (PayModeId)
)
GO

CREATE TABLE [dbo].[BuyHeader](
[BuyId][int] NOT NULL,
[BuyerId][varchar](50) NOT NULL,
[Date][datetime] NOT NULL,
[SellerId][varchar](50) NOT NULL,
[PayModeId][int] NOT NULL,
[Total][money] NOT NULL,
[DiscountPercentage][float] NOT NULL,
CONSTRAINT [PK_BuyId] PRIMARY KEY (BuyId),
CONSTRAINT [FK_BuyerIdToHeader] FOREIGN KEY (BuyerId)
REFERENCES [dbo].[User] ([UserId]),
CONSTRAINT [FK_SellerIdToHeader] FOREIGN KEY (SellerId)
REFERENCES [dbo].[User] ([UserId]),
CONSTRAINT [FK_PayModeIdToHeader] FOREIGN KEY (PayModeId)
REFERENCES [dbo].[PayModes] ([PayModeId]),
)
GO

CREATE TABLE [dbo].[BuyDetails](
[BuyId][int] NOT NULL,
[Quantity][int] NOT NULL,
[ProductId][varchar](10) NOT NULL,
[SubTotal][money] NOT NULL,
[TaxPercentage][float] NOT NULL,
CONSTRAINT [FK_BuyIdToDetails] FOREIGN KEY (BuyId)
REFERENCES [dbo].[BuyHeader] ([BuyId]),
CONSTRAINT [FK_ProdcutIdToDetails] FOREIGN KEY (ProductId)
REFERENCES [dbo].[Product] ([ProductId])
)
GO