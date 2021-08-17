USE [GreenCarpetsDb]
GO
ALTER TABLE [dbo].[WebUser] DROP CONSTRAINT [FK_WebUser_Role]
GO
ALTER TABLE [dbo].[Vehicle] DROP CONSTRAINT [FK_Vehicle_Branch]
GO
ALTER TABLE [dbo].[Subscription] DROP CONSTRAINT [FK_Subscription_SubscriptionType]
GO
ALTER TABLE [dbo].[Subscription] DROP CONSTRAINT [FK_Subscription_BaseCompany]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Branch]
GO
ALTER TABLE [dbo].[PaymentMethod] DROP CONSTRAINT [FK_PaymentMethod_PaymentCardType]
GO
ALTER TABLE [dbo].[PaymentMethod] DROP CONSTRAINT [FK_PaymentMethod_Customer]
GO
ALTER TABLE [dbo].[OrderLine] DROP CONSTRAINT [FK_OrderLine_Product]
GO
ALTER TABLE [dbo].[OrderLine] DROP CONSTRAINT [FK_OrderLine_Order]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_OrderType]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_Employee]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[MM_SubscriptionServices] DROP CONSTRAINT [FK_MM_SubscriptionServices_Subscription]
GO
ALTER TABLE [dbo].[MM_SubscriptionServices] DROP CONSTRAINT [FK_MM_SubscriptionServices_Service]
GO
ALTER TABLE [dbo].[MM_CustomerSubscription] DROP CONSTRAINT [FK_MM_CustomerSubscription_Subscription]
GO
ALTER TABLE [dbo].[MM_CustomerSubscription] DROP CONSTRAINT [FK_MM_CustomerSubscription_Customer]
GO
ALTER TABLE [dbo].[InvoiceLine] DROP CONSTRAINT [FK_InvoiceLine_Order]
GO
ALTER TABLE [dbo].[InvoiceLine] DROP CONSTRAINT [FK_InvoiceLine_Invoice]
GO
ALTER TABLE [dbo].[Invoice] DROP CONSTRAINT [FK_Invoice_InvoiceType]
GO
ALTER TABLE [dbo].[Invoice] DROP CONSTRAINT [FK_Invoice_InvoiceStatusType]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_WebUser1]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_WebUser]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_Designation]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_Branch]
GO
ALTER TABLE [dbo].[DeliveryReport] DROP CONSTRAINT [FK_DeliveryReport_Vehicle]
GO
ALTER TABLE [dbo].[DeliveryReport] DROP CONSTRAINT [FK_DeliveryReport_DeliveryStatusType]
GO
ALTER TABLE [dbo].[DeliveryReport] DROP CONSTRAINT [FK_DeliveryReport_DeliveryAddress]
GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [FK_Customer_WebUser]
GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [FK_Customer_CustomerType]
GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [FK__Customer__UserId__30F848ED]
GO
ALTER TABLE [dbo].[CompanyOwner] DROP CONSTRAINT [FK_CompanyOwner_WebUser]
GO
ALTER TABLE [dbo].[Branch] DROP CONSTRAINT [FK_Branch_BaseCompany]
GO
ALTER TABLE [dbo].[BaseCompany] DROP CONSTRAINT [FK_BaseCompany_Countries]
GO
ALTER TABLE [dbo].[BaseCompany] DROP CONSTRAINT [FK_BaseCompany_CompanyOwner]
GO
ALTER TABLE [dbo].[WebUser] DROP CONSTRAINT [DF__WebUser__IsDelet__2C3393D0]
GO
ALTER TABLE [dbo].[WebUser] DROP CONSTRAINT [DF__WebUser__IsUserL__2B3F6F97]
GO
ALTER TABLE [dbo].[WebUser] DROP CONSTRAINT [DF__WebUser__IsUserA__2A4B4B5E]
GO
ALTER TABLE [dbo].[WebUser] DROP CONSTRAINT [DF__WebUser__Id__29572725]
GO
ALTER TABLE [dbo].[SubscriptionType] DROP CONSTRAINT [DF__Subscript__IsYea__1332DBDC]
GO
ALTER TABLE [dbo].[SubscriptionType] DROP CONSTRAINT [DF__Subscript__IsMon__123EB7A3]
GO
ALTER TABLE [dbo].[SubscriptionType] DROP CONSTRAINT [DF__Subscript__IsDai__114A936A]
GO
ALTER TABLE [dbo].[Subscription] DROP CONSTRAINT [DF__Subscript__Creat__10566F31]
GO
ALTER TABLE [dbo].[Subscription] DROP CONSTRAINT [DF__Subscript__IsDel__0F624AF8]
GO
ALTER TABLE [dbo].[Subscription] DROP CONSTRAINT [DF__Subscript__IsAct__0E6E26BF]
GO
ALTER TABLE [dbo].[Service] DROP CONSTRAINT [DF__Service__IsDelet__0D7A0286]
GO
ALTER TABLE [dbo].[Role] DROP CONSTRAINT [DF__Role__IsDeleted__0C85DE4D]
GO
ALTER TABLE [dbo].[ProductCategory] DROP CONSTRAINT [DF__ProductCa__IsDel__0B91BA14]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF__Product__Created__0A9D95DB]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF__Product__IsDelet__09A971A2]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF__Product__Quantit__08B54D69]
GO
ALTER TABLE [dbo].[PaymentMethodType] DROP CONSTRAINT [DF__PaymentCa__IsDel__06CD04F7]
GO
ALTER TABLE [dbo].[PaymentMethod] DROP CONSTRAINT [DF__PaymentMe__IsDel__07C12930]
GO
ALTER TABLE [dbo].[OrderType] DROP CONSTRAINT [DF__OrderType__Creat__05D8E0BE]
GO
ALTER TABLE [dbo].[OrderType] DROP CONSTRAINT [DF__OrderType__IsDel__04E4BC85]
GO
ALTER TABLE [dbo].[OrderLine] DROP CONSTRAINT [DF__OrderLine__Quant__03F0984C]
GO
ALTER TABLE [dbo].[OrderLine] DROP CONSTRAINT [DF__OrderLine__VAT__02FC7413]
GO
ALTER TABLE [dbo].[OrderLine] DROP CONSTRAINT [DF__OrderLine__Price__02084FDA]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [DF__Order__CreatedAt__01142BA1]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [DF__Order__IsDeleted__00200768]
GO
ALTER TABLE [dbo].[MM_SubscriptionServices] DROP CONSTRAINT [DF__MM_Subscr__Creat__66603565]
GO
ALTER TABLE [dbo].[MM_SubscriptionServices] DROP CONSTRAINT [DF__MM_Subscr__IsDel__656C112C]
GO
ALTER TABLE [dbo].[MM_SubscriptionServices] DROP CONSTRAINT [DF__MM_Subscr__IsAct__6477ECF3]
GO
ALTER TABLE [dbo].[MM_SubscriptionServices] DROP CONSTRAINT [DF__MM_Subscr__AutoR__6383C8BA]
GO
ALTER TABLE [dbo].[MM_CustomerSubscription] DROP CONSTRAINT [DF__MM_Custom__Creat__6B24EA82]
GO
ALTER TABLE [dbo].[MM_CustomerSubscription] DROP CONSTRAINT [DF__MM_Custom__IsDel__6A30C649]
GO
ALTER TABLE [dbo].[MM_CustomerSubscription] DROP CONSTRAINT [DF__MM_Custom__IsAct__693CA210]
GO
ALTER TABLE [dbo].[MM_CustomerSubscription] DROP CONSTRAINT [DF__MM_Custom__AutoR__68487DD7]
GO
ALTER TABLE [dbo].[InvoiceType] DROP CONSTRAINT [DF__InvoiceTy__IsDel__778AC167]
GO
ALTER TABLE [dbo].[InvoiceStatusType] DROP CONSTRAINT [DF__InvoiceSt__IsDel__76969D2E]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [DF__Employee__Create__6FE99F9F]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [DF__Employee__IsDele__6EF57B66]
GO
ALTER TABLE [dbo].[Designation] DROP CONSTRAINT [DF__Designati__Creat__73BA3083]
GO
ALTER TABLE [dbo].[Designation] DROP CONSTRAINT [DF__Designati__IsDel__72C60C4A]
GO
ALTER TABLE [dbo].[DeliveryStatusType] DROP CONSTRAINT [DF__DeliveryS__Creat__71D1E811]
GO
ALTER TABLE [dbo].[DeliveryStatusType] DROP CONSTRAINT [DF__DeliveryS__IsDel__70DDC3D8]
GO
ALTER TABLE [dbo].[DeliveryReport] DROP CONSTRAINT [DF__DeliveryR__Creat__6FE99F9F]
GO
ALTER TABLE [dbo].[DeliveryReport] DROP CONSTRAINT [DF__DeliveryR__IsDel__6EF57B66]
GO
ALTER TABLE [dbo].[DeliveryReport] DROP CONSTRAINT [DF__DeliveryR__IsAct__6E01572D]
GO
ALTER TABLE [dbo].[DeliveryAddress] DROP CONSTRAINT [DF__DeliveryA__Creat__6D0D32F4]
GO
ALTER TABLE [dbo].[DeliveryAddress] DROP CONSTRAINT [DF__DeliveryA__IsDel__6C190EBB]
GO
ALTER TABLE [dbo].[CustomerType] DROP CONSTRAINT [DF__CustomerT__IsDel__6B24EA82]
GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__Create__6477ECF3]
GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__IsDele__6383C8BA]
GO
ALTER TABLE [dbo].[CompanyOwner] DROP CONSTRAINT [DF__CompanyOw__Creat__628FA481]
GO
ALTER TABLE [dbo].[CompanyOwner] DROP CONSTRAINT [DF__CompanyOw__IsDel__619B8048]
GO
ALTER TABLE [dbo].[Branch] DROP CONSTRAINT [DF__Branch__IsDelete__60A75C0F]
GO
ALTER TABLE [dbo].[BaseCompany] DROP CONSTRAINT [DF__BaseCompa__Creat__5FB337D6]
GO
ALTER TABLE [dbo].[BaseCompany] DROP CONSTRAINT [DF__BaseCompa__IsDel__5EBF139D]
GO
/****** Object:  Index [UQ__Customer__1788CC4D0C21D608]    Script Date: 17/08/2021 6:23:53 pm ******/
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [UQ__Customer__1788CC4D0C21D608]
GO
/****** Object:  Index [uc_Countries_Iso]    Script Date: 17/08/2021 6:23:53 pm ******/
ALTER TABLE [dbo].[Country] DROP CONSTRAINT [uc_Countries_Iso]
GO
/****** Object:  Index [UQ__CompanyO__1788CC4D01782745]    Script Date: 17/08/2021 6:23:53 pm ******/
ALTER TABLE [dbo].[CompanyOwner] DROP CONSTRAINT [UQ__CompanyO__1788CC4D01782745]
GO
/****** Object:  Table [dbo].[WebUser]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WebUser]') AND type in (N'U'))
DROP TABLE [dbo].[WebUser]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vehicle]') AND type in (N'U'))
DROP TABLE [dbo].[Vehicle]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Supplier]') AND type in (N'U'))
DROP TABLE [dbo].[Supplier]
GO
/****** Object:  Table [dbo].[SubscriptionType]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SubscriptionType]') AND type in (N'U'))
DROP TABLE [dbo].[SubscriptionType]
GO
/****** Object:  Table [dbo].[Subscription]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Subscription]') AND type in (N'U'))
DROP TABLE [dbo].[Subscription]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Service]') AND type in (N'U'))
DROP TABLE [dbo].[Service]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategory]') AND type in (N'U'))
DROP TABLE [dbo].[ProductCategory]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[PaymentMethodType]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PaymentMethodType]') AND type in (N'U'))
DROP TABLE [dbo].[PaymentMethodType]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PaymentMethod]') AND type in (N'U'))
DROP TABLE [dbo].[PaymentMethod]
GO
/****** Object:  Table [dbo].[OrderType]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderType]') AND type in (N'U'))
DROP TABLE [dbo].[OrderType]
GO
/****** Object:  Table [dbo].[OrderLine]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderLine]') AND type in (N'U'))
DROP TABLE [dbo].[OrderLine]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND type in (N'U'))
DROP TABLE [dbo].[Order]
GO
/****** Object:  Table [dbo].[MM_SubscriptionServices]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MM_SubscriptionServices]') AND type in (N'U'))
DROP TABLE [dbo].[MM_SubscriptionServices]
GO
/****** Object:  Table [dbo].[MM_CustomerSubscription]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MM_CustomerSubscription]') AND type in (N'U'))
DROP TABLE [dbo].[MM_CustomerSubscription]
GO
/****** Object:  Table [dbo].[InvoiceType]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvoiceType]') AND type in (N'U'))
DROP TABLE [dbo].[InvoiceType]
GO
/****** Object:  Table [dbo].[InvoiceStatusType]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvoiceStatusType]') AND type in (N'U'))
DROP TABLE [dbo].[InvoiceStatusType]
GO
/****** Object:  Table [dbo].[InvoiceLine]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvoiceLine]') AND type in (N'U'))
DROP TABLE [dbo].[InvoiceLine]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoice]') AND type in (N'U'))
DROP TABLE [dbo].[Invoice]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Designation]') AND type in (N'U'))
DROP TABLE [dbo].[Designation]
GO
/****** Object:  Table [dbo].[DeliveryStatusType]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeliveryStatusType]') AND type in (N'U'))
DROP TABLE [dbo].[DeliveryStatusType]
GO
/****** Object:  Table [dbo].[DeliveryReport]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeliveryReport]') AND type in (N'U'))
DROP TABLE [dbo].[DeliveryReport]
GO
/****** Object:  Table [dbo].[DeliveryAddress]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeliveryAddress]') AND type in (N'U'))
DROP TABLE [dbo].[DeliveryAddress]
GO
/****** Object:  Table [dbo].[CustomerType]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerType]') AND type in (N'U'))
DROP TABLE [dbo].[CustomerType]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type in (N'U'))
DROP TABLE [dbo].[Country]
GO
/****** Object:  Table [dbo].[CompanyOwner]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CompanyOwner]') AND type in (N'U'))
DROP TABLE [dbo].[CompanyOwner]
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Branch]') AND type in (N'U'))
DROP TABLE [dbo].[Branch]
GO
/****** Object:  Table [dbo].[BaseCompany]    Script Date: 17/08/2021 6:23:53 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BaseCompany]') AND type in (N'U'))
DROP TABLE [dbo].[BaseCompany]
GO
/****** Object:  User [greenappuser]    Script Date: 17/08/2021 6:23:53 pm ******/
DROP USER [greenappuser]
GO
/****** Object:  User [greenappuser]    Script Date: 17/08/2021 6:23:53 pm ******/
CREATE USER [greenappuser] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [greenappuser]
GO
/****** Object:  Table [dbo].[BaseCompany]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaseCompany](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NOT NULL,
	[CompanyOwnerId] [bigint] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[LegalName] [nvarchar](150) NOT NULL,
	[OrganizationNumber] [varchar](50) NOT NULL,
	[Address] [nvarchar](250) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[City] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](150) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
 CONSTRAINT [PK__BaseComp__3214EC07F1962EED] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BaseCompanyId] [int] NULL,
	[Name] [nvarchar](1) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Address] [nvarchar](250) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[City] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](150) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
 CONSTRAINT [PK__Branch__3214EC07E7EACDDA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyOwner]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyOwner](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](75) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[City] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](150) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
 CONSTRAINT [PK__CompanyO__3214EC0762E02F44] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Iso] [varchar](2) NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[Iso3] [varchar](3) NULL,
	[NumCode] [int] NULL,
	[PhoneCode] [int] NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerTypeId] [int] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](75) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[City] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](150) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
 CONSTRAINT [PK__Customer__3214EC0793A7AD12] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerType]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryAddress]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryAddress](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RecieverName] [nvarchar](max) NULL,
	[Address] [nvarchar](250) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[City] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](150) NULL,
	[Latitude] [decimal](12, 9) NULL,
	[Longitude] [decimal](12, 9) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryReport]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryReport](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VehicleId] [int] NULL,
	[DeliveryAddressId] [bigint] NULL,
	[DeliveryStatusTypeId] [int] NULL,
	[Latitude] [decimal](12, 9) NULL,
	[Longitude] [decimal](12, 9) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryStatusType]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryStatusType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[DesignationId] [int] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](75) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[City] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](150) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
 CONSTRAINT [PK__Employee__3214EC078F921463] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[InvoiceTypeId] [int] NULL,
	[InvoiceStatusTypeId] [int] NULL,
	[TotalAmount] [decimal](19, 4) NULL,
	[TotalVat] [decimal](19, 4) NULL,
	[TotalPaidAmount] [decimal](19, 4) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceLine]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceLine](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [bigint] NULL,
	[OrderId] [bigint] NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[OrderSum] [decimal](19, 4) NULL,
	[VAT] [decimal](19, 4) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceStatusType]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceStatusType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceType]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MM_CustomerSubscription]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MM_CustomerSubscription](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerId] [bigint] NULL,
	[SubscriptionId] [bigint] NULL,
	[StartDate] [datetime] NOT NULL,
	[ExpiryDate] [datetime] NOT NULL,
	[AutoRenewal] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
 CONSTRAINT [PK_MM_CustomerSubscription] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MM_SubscriptionServices]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MM_SubscriptionServices](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ServiceId] [int] NULL,
	[SubscriptionId] [bigint] NULL,
	[StartDate] [datetime] NOT NULL,
	[ExpiryDate] [datetime] NOT NULL,
	[AutoRenewal] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
 CONSTRAINT [PK_MM_SubscriptionServices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderTypeId] [int] NOT NULL,
	[CustomerId] [bigint] NOT NULL,
	[EmployeeId] [bigint] NULL,
	[TotalAmount] [decimal](19, 4) NULL,
	[TotalVat] [decimal](19, 4) NULL,
	[OrderStatus] [int] NOT NULL,
	[DeliveryAddressId] [bigint] NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderLine]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLine](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [bigint] NULL,
	[Title] [nvarchar](max) NULL,
	[PriceExcludingVat] [decimal](19, 4) NOT NULL,
	[VAT] [decimal](19, 4) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderLine] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderType]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](250) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
 CONSTRAINT [PK__OrderTyp__3214EC07BE6BFF95] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CardTypeId] [int] NOT NULL,
	[CustomerId] [bigint] NOT NULL,
	[CatdNumber] [int] NULL,
	[CardExpiredAt] [datetime] NULL,
	[Cvc] [varchar](5) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethodType]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethodType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SupplierId] [int] NOT NULL,
	[BranchId] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[PurchasePrice] [decimal](19, 4) NULL,
	[ProfitMargin] [decimal](19, 4) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscription]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscription](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SubscriptionTypeId] [int] NOT NULL,
	[BaseCompanyID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[PriceExcludingVat] [decimal](19, 4) NULL,
	[VAT] [decimal](19, 4) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubscriptionType]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscriptionType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsDailySubscription] [bit] NULL,
	[IsMonthlySubscription] [bit] NULL,
	[IsYearlySubscription] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Adress] [nvarchar](150) NULL,
	[PostalCode] [nvarchar](150) NULL,
	[City] [nvarchar](150) NULL,
	[LegalName] [nvarchar](150) NULL,
	[ContactPersonName] [nvarchar](150) NULL,
	[ContactPersonEmail] [nvarchar](150) NULL,
	[ContactPersonPhone] [nvarchar](150) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
 CONSTRAINT [PK__Supplier__3214EC078D57936A] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[Make] [varchar](30) NULL,
	[Model] [varchar](30) NULL,
	[RegistrationNo] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebUser]    Script Date: 17/08/2021 6:23:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebUser](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[MobileNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[IsUserActive] [bit] NOT NULL,
	[IsUserLocked] [bit] NOT NULL,
	[UserLocketAt] [datetime] NULL,
	[LastLoginTime] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedAt] [datetime] NULL,
 CONSTRAINT [PK__WebUser__3214EC077F456589] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Country] ON 
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (1, N'AF', N'Afghanistan', N'AFG', 4, 93)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (2, N'AL', N'Albania', N'ALB', 8, 355)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (3, N'DZ', N'Algeria', N'DZA', 12, 213)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (4, N'AS', N'American Samoa', N'ASM', 16, 1684)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (5, N'AD', N'Andorra', N'AND', 20, 376)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (6, N'AO', N'Angola', N'AGO', 24, 244)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (7, N'AI', N'Anguilla', N'AIA', 660, 1264)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (8, N'AQ', N'Antarctica', NULL, NULL, 0)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (9, N'AG', N'Antigua and Barbuda', N'ATG', 28, 1268)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (10, N'AR', N'Argentina', N'ARG', 32, 54)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (11, N'AM', N'Armenia', N'ARM', 51, 374)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (12, N'AW', N'Aruba', N'ABW', 533, 297)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (13, N'AU', N'Australia', N'AUS', 36, 61)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (14, N'AT', N'Austria', N'AUT', 40, 43)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (15, N'AZ', N'Azerbaijan', N'AZE', 31, 994)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (16, N'BS', N'Bahamas', N'BHS', 44, 1242)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (17, N'BH', N'Bahrain', N'BHR', 48, 973)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (18, N'BD', N'Bangladesh', N'BGD', 50, 880)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (19, N'BB', N'Barbados', N'BRB', 52, 1246)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (20, N'BY', N'Belarus', N'BLR', 112, 375)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (21, N'BE', N'Belgium', N'BEL', 56, 32)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (22, N'BZ', N'Belize', N'BLZ', 84, 501)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (23, N'BJ', N'Benin', N'BEN', 204, 229)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (24, N'BM', N'Bermuda', N'BMU', 60, 1441)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (25, N'BT', N'Bhutan', N'BTN', 64, 975)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (26, N'BO', N'Bolivia', N'BOL', 68, 591)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (27, N'BA', N'Bosnia and Herzegovina', N'BIH', 70, 387)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (28, N'BW', N'Botswana', N'BWA', 72, 267)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (29, N'BV', N'Bouvet Island', NULL, NULL, 0)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (30, N'BR', N'Brazil', N'BRA', 76, 55)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (31, N'IO', N'British Indian Ocean Territory', NULL, NULL, 246)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (32, N'BN', N'Brunei Darussalam', N'BRN', 96, 673)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (33, N'BG', N'Bulgaria', N'BGR', 100, 359)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (34, N'BF', N'Burkina Faso', N'BFA', 854, 226)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (35, N'BI', N'Burundi', N'BDI', 108, 257)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (36, N'KH', N'Cambodia', N'KHM', 116, 855)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (37, N'CM', N'Cameroon', N'CMR', 120, 237)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (38, N'CA', N'Canada', N'CAN', 124, 1)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (39, N'CV', N'Cape Verde', N'CPV', 132, 238)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (40, N'KY', N'Cayman Islands', N'CYM', 136, 1345)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (41, N'CF', N'Central African Republic', N'CAF', 140, 236)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (42, N'TD', N'Chad', N'TCD', 148, 235)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (43, N'CL', N'Chile', N'CHL', 152, 56)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (44, N'CN', N'China', N'CHN', 156, 86)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (45, N'CX', N'Christmas Island', NULL, NULL, 61)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (46, N'CC', N'Cocos (Keeling) Islands', NULL, NULL, 672)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (47, N'CO', N'Colombia', N'COL', 170, 57)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (48, N'KM', N'Comoros', N'COM', 174, 269)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (49, N'CG', N'Congo', N'COG', 178, 242)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (50, N'CD', N'Congo, the Democratic Republic of the', N'COD', 180, 242)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (51, N'CK', N'Cook Islands', N'COK', 184, 682)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (52, N'CR', N'Costa Rica', N'CRI', 188, 506)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (53, N'CI', N'Cote D''Ivoire', N'CIV', 384, 225)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (54, N'HR', N'Croatia', N'HRV', 191, 385)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (55, N'CU', N'Cuba', N'CUB', 192, 53)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (56, N'CY', N'Cyprus', N'CYP', 196, 357)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (57, N'CZ', N'Czech Republic', N'CZE', 203, 420)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (58, N'DK', N'Denmark', N'DNK', 208, 45)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (59, N'DJ', N'Djibouti', N'DJI', 262, 253)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (60, N'DM', N'Dominica', N'DMA', 212, 1767)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (61, N'DO', N'Dominican Republic', N'DOM', 214, 1809)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (62, N'EC', N'Ecuador', N'ECU', 218, 593)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (63, N'EG', N'Egypt', N'EGY', 818, 20)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (64, N'SV', N'El Salvador', N'SLV', 222, 503)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (65, N'GQ', N'Equatorial Guinea', N'GNQ', 226, 240)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (66, N'ER', N'Eritrea', N'ERI', 232, 291)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (67, N'EE', N'Estonia', N'EST', 233, 372)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (68, N'ET', N'Ethiopia', N'ETH', 231, 251)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (69, N'FK', N'Falkland Islands (Malvinas)', N'FLK', 238, 500)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (70, N'FO', N'Faroe Islands', N'FRO', 234, 298)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (71, N'FJ', N'Fiji', N'FJI', 242, 679)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (72, N'FI', N'Finland', N'FIN', 246, 358)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (73, N'FR', N'France', N'FRA', 250, 33)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (74, N'GF', N'French Guiana', N'GUF', 254, 594)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (75, N'PF', N'French Polynesia', N'PYF', 258, 689)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (76, N'TF', N'French Southern Territories', NULL, NULL, 0)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (77, N'GA', N'Gabon', N'GAB', 266, 241)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (78, N'GM', N'Gambia', N'GMB', 270, 220)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (79, N'GE', N'Georgia', N'GEO', 268, 995)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (80, N'DE', N'Germany', N'DEU', 276, 49)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (81, N'GH', N'Ghana', N'GHA', 288, 233)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (82, N'GI', N'Gibraltar', N'GIB', 292, 350)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (83, N'GR', N'Greece', N'GRC', 300, 30)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (84, N'GL', N'Greenland', N'GRL', 304, 299)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (85, N'GD', N'Grenada', N'GRD', 308, 1473)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (86, N'GP', N'Guadeloupe', N'GLP', 312, 590)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (87, N'GU', N'Guam', N'GUM', 316, 1671)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (88, N'GT', N'Guatemala', N'GTM', 320, 502)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (89, N'GN', N'Guinea', N'GIN', 324, 224)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (90, N'GW', N'Guinea-Bissau', N'GNB', 624, 245)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (91, N'GY', N'Guyana', N'GUY', 328, 592)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (92, N'HT', N'Haiti', N'HTI', 332, 509)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (93, N'HM', N'Heard Island and Mcdonald Islands', NULL, NULL, 0)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (94, N'VA', N'Holy See (Vatican City State)', N'VAT', 336, 39)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (95, N'HN', N'Honduras', N'HND', 340, 504)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (96, N'HK', N'Hong Kong', N'HKG', 344, 852)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (97, N'HU', N'Hungary', N'HUN', 348, 36)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (98, N'IS', N'Iceland', N'ISL', 352, 354)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (99, N'IN', N'India', N'IND', 356, 91)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (100, N'ID', N'Indonesia', N'IDN', 360, 62)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (101, N'IR', N'Iran, Islamic Republic of', N'IRN', 364, 98)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (102, N'IQ', N'Iraq', N'IRQ', 368, 964)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (103, N'IE', N'Ireland', N'IRL', 372, 353)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (104, N'IL', N'Israel', N'ISR', 376, 972)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (105, N'IT', N'Italy', N'ITA', 380, 39)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (106, N'JM', N'Jamaica', N'JAM', 388, 1876)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (107, N'JP', N'Japan', N'JPN', 392, 81)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (108, N'JO', N'Jordan', N'JOR', 400, 962)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (109, N'KZ', N'Kazakhstan', N'KAZ', 398, 7)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (110, N'KE', N'Kenya', N'KEN', 404, 254)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (111, N'KI', N'Kiribati', N'KIR', 296, 686)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (112, N'KP', N'Korea, Democratic People''s Republic of', N'PRK', 408, 850)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (113, N'KR', N'Korea, Republic of', N'KOR', 410, 82)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (114, N'KW', N'Kuwait', N'KWT', 414, 965)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (115, N'KG', N'Kyrgyzstan', N'KGZ', 417, 996)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (116, N'LA', N'Lao People''s Democratic Republic', N'LAO', 418, 856)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (117, N'LV', N'Latvia', N'LVA', 428, 371)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (118, N'LB', N'Lebanon', N'LBN', 422, 961)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (119, N'LS', N'Lesotho', N'LSO', 426, 266)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (120, N'LR', N'Liberia', N'LBR', 430, 231)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (121, N'LY', N'Libyan Arab Jamahiriya', N'LBY', 434, 218)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (122, N'LI', N'Liechtenstein', N'LIE', 438, 423)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (123, N'LT', N'Lithuania', N'LTU', 440, 370)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (124, N'LU', N'Luxembourg', N'LUX', 442, 352)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (125, N'MO', N'Macao', N'MAC', 446, 853)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (126, N'MK', N'Macedonia, the Former Yugoslav Republic of', N'MKD', 807, 389)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (127, N'MG', N'Madagascar', N'MDG', 450, 261)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (128, N'MW', N'Malawi', N'MWI', 454, 265)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (129, N'MY', N'Malaysia', N'MYS', 458, 60)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (130, N'MV', N'Maldives', N'MDV', 462, 960)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (131, N'ML', N'Mali', N'MLI', 466, 223)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (132, N'MT', N'Malta', N'MLT', 470, 356)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (133, N'MH', N'Marshall Islands', N'MHL', 584, 692)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (134, N'MQ', N'Martinique', N'MTQ', 474, 596)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (135, N'MR', N'Mauritania', N'MRT', 478, 222)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (136, N'MU', N'Mauritius', N'MUS', 480, 230)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (137, N'YT', N'Mayotte', NULL, NULL, 269)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (138, N'MX', N'Mexico', N'MEX', 484, 52)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (139, N'FM', N'Micronesia, Federated States of', N'FSM', 583, 691)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (140, N'MD', N'Moldova, Republic of', N'MDA', 498, 373)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (141, N'MC', N'Monaco', N'MCO', 492, 377)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (142, N'MN', N'Mongolia', N'MNG', 496, 976)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (143, N'MS', N'Montserrat', N'MSR', 500, 1664)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (144, N'MA', N'Morocco', N'MAR', 504, 212)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (145, N'MZ', N'Mozambique', N'MOZ', 508, 258)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (146, N'MM', N'Myanmar', N'MMR', 104, 95)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (147, N'NA', N'Namibia', N'NAM', 516, 264)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (148, N'NR', N'Nauru', N'NRU', 520, 674)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (149, N'NP', N'Nepal', N'NPL', 524, 977)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (150, N'NL', N'Netherlands', N'NLD', 528, 31)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (151, N'AN', N'Netherlands Antilles', N'ANT', 530, 599)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (152, N'NC', N'New Caledonia', N'NCL', 540, 687)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (153, N'NZ', N'New Zealand', N'NZL', 554, 64)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (154, N'NI', N'Nicaragua', N'NIC', 558, 505)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (155, N'NE', N'Niger', N'NER', 562, 227)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (156, N'NG', N'Nigeria', N'NGA', 566, 234)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (157, N'NU', N'Niue', N'NIU', 570, 683)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (158, N'NF', N'Norfolk Island', N'NFK', 574, 672)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (159, N'MP', N'Northern Mariana Islands', N'MNP', 580, 1670)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (160, N'NO', N'Norway', N'NOR', 578, 47)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (161, N'OM', N'Oman', N'OMN', 512, 968)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (162, N'PK', N'Pakistan', N'PAK', 586, 92)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (163, N'PW', N'Palau', N'PLW', 585, 680)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (164, N'PS', N'Palestinian Territory, Occupied', NULL, NULL, 970)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (165, N'PA', N'Panama', N'PAN', 591, 507)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (166, N'PG', N'Papua New Guinea', N'PNG', 598, 675)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (167, N'PY', N'Paraguay', N'PRY', 600, 595)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (168, N'PE', N'Peru', N'PER', 604, 51)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (169, N'PH', N'Philippines', N'PHL', 608, 63)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (170, N'PN', N'Pitcairn', N'PCN', 612, 0)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (171, N'PL', N'Poland', N'POL', 616, 48)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (172, N'PT', N'Portugal', N'PRT', 620, 351)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (173, N'PR', N'Puerto Rico', N'PRI', 630, 1787)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (174, N'QA', N'Qatar', N'QAT', 634, 974)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (175, N'RE', N'Reunion', N'REU', 638, 262)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (176, N'RO', N'Romania', N'ROM', 642, 40)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (177, N'RU', N'Russian Federation', N'RUS', 643, 70)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (178, N'RW', N'Rwanda', N'RWA', 646, 250)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (179, N'SH', N'Saint Helena', N'SHN', 654, 290)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (180, N'KN', N'Saint Kitts and Nevis', N'KNA', 659, 1869)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (181, N'LC', N'Saint Lucia', N'LCA', 662, 1758)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (182, N'PM', N'Saint Pierre and Miquelon', N'SPM', 666, 508)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (183, N'VC', N'Saint Vincent and the Grenadines', N'VCT', 670, 1784)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (184, N'WS', N'Samoa', N'WSM', 882, 684)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (185, N'SM', N'San Marino', N'SMR', 674, 378)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (186, N'ST', N'Sao Tome and Principe', N'STP', 678, 239)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (187, N'SA', N'Saudi Arabia', N'SAU', 682, 966)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (188, N'SN', N'Senegal', N'SEN', 686, 221)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (189, N'CS', N'Serbia and Montenegro', NULL, NULL, 381)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (190, N'SC', N'Seychelles', N'SYC', 690, 248)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (191, N'SL', N'Sierra Leone', N'SLE', 694, 232)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (192, N'SG', N'Singapore', N'SGP', 702, 65)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (193, N'SK', N'Slovakia', N'SVK', 703, 421)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (194, N'SI', N'Slovenia', N'SVN', 705, 386)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (195, N'SB', N'Solomon Islands', N'SLB', 90, 677)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (196, N'SO', N'Somalia', N'SOM', 706, 252)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (197, N'ZA', N'South Africa', N'ZAF', 710, 27)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (198, N'GS', N'South Georgia and the South Sandwich Islands', NULL, NULL, 0)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (199, N'ES', N'Spain', N'ESP', 724, 34)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (200, N'LK', N'Sri Lanka', N'LKA', 144, 94)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (201, N'SD', N'Sudan', N'SDN', 736, 249)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (202, N'SR', N'Suriname', N'SUR', 740, 597)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (203, N'SJ', N'Svalbard and Jan Mayen', N'SJM', 744, 47)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (204, N'SZ', N'Swaziland', N'SWZ', 748, 268)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (205, N'SE', N'Sweden', N'SWE', 752, 46)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (206, N'CH', N'Switzerland', N'CHE', 756, 41)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (207, N'SY', N'Syrian Arab Republic', N'SYR', 760, 963)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (208, N'TW', N'Taiwan, Province of China', N'TWN', 158, 886)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (209, N'TJ', N'Tajikistan', N'TJK', 762, 992)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (210, N'TZ', N'Tanzania, United Republic of', N'TZA', 834, 255)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (211, N'TH', N'Thailand', N'THA', 764, 66)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (212, N'TL', N'Timor-Leste', NULL, NULL, 670)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (213, N'TG', N'Togo', N'TGO', 768, 228)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (214, N'TK', N'Tokelau', N'TKL', 772, 690)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (215, N'TO', N'Tonga', N'TON', 776, 676)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (216, N'TT', N'Trinidad and Tobago', N'TTO', 780, 1868)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (217, N'TN', N'Tunisia', N'TUN', 788, 216)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (218, N'TR', N'Turkey', N'TUR', 792, 90)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (219, N'TM', N'Turkmenistan', N'TKM', 795, 7370)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (220, N'TC', N'Turks and Caicos Islands', N'TCA', 796, 1649)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (221, N'TV', N'Tuvalu', N'TUV', 798, 688)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (222, N'UG', N'Uganda', N'UGA', 800, 256)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (223, N'UA', N'Ukraine', N'UKR', 804, 380)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (224, N'AE', N'United Arab Emirates', N'ARE', 784, 971)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (225, N'GB', N'United Kingdom', N'GBR', 826, 44)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (226, N'US', N'United States', N'USA', 840, 1)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (227, N'UM', N'United States Minor Outlying Islands', NULL, NULL, 1)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (228, N'UY', N'Uruguay', N'URY', 858, 598)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (229, N'UZ', N'Uzbekistan', N'UZB', 860, 998)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (230, N'VU', N'Vanuatu', N'VUT', 548, 678)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (231, N'VE', N'Venezuela', N'VEN', 862, 58)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (232, N'VN', N'Viet Nam', N'VNM', 704, 84)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (233, N'VG', N'Virgin Islands, British', N'VGB', 92, 1284)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (234, N'VI', N'Virgin Islands, U.s.', N'VIR', 850, 1340)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (235, N'WF', N'Wallis and Futuna', N'WLF', 876, 681)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (236, N'EH', N'Western Sahara', N'ESH', 732, 212)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (237, N'YE', N'Yemen', N'YEM', 887, 967)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (238, N'ZM', N'Zambia', N'ZMB', 894, 260)
GO
INSERT [dbo].[Country] ([Id], [Iso], [Name], [Iso3], [NumCode], [PhoneCode]) VALUES (239, N'ZW', N'Zimbabwe', N'ZWE', 716, 263)
GO
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
/****** Object:  Index [UQ__CompanyO__1788CC4D01782745]    Script Date: 17/08/2021 6:23:53 pm ******/
ALTER TABLE [dbo].[CompanyOwner] ADD UNIQUE NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uc_Countries_Iso]    Script Date: 17/08/2021 6:23:53 pm ******/
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [uc_Countries_Iso] UNIQUE NONCLUSTERED 
(
	[Iso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Customer__1788CC4D0C21D608]    Script Date: 17/08/2021 6:23:53 pm ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BaseCompany] ADD  CONSTRAINT [DF__BaseCompa__IsDel__5EBF139D]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[BaseCompany] ADD  CONSTRAINT [DF__BaseCompa__Creat__5FB337D6]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Branch] ADD  CONSTRAINT [DF__Branch__IsDelete__60A75C0F]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[CompanyOwner] ADD  CONSTRAINT [DF__CompanyOw__IsDel__619B8048]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[CompanyOwner] ADD  CONSTRAINT [DF__CompanyOw__Creat__628FA481]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsDele__6383C8BA]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__Create__6477ECF3]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[CustomerType] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[DeliveryAddress] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[DeliveryAddress] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[DeliveryReport] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[DeliveryReport] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[DeliveryReport] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[DeliveryStatusType] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[DeliveryStatusType] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Designation] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Designation] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF__Employee__IsDele__6EF57B66]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF__Employee__Create__6FE99F9F]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[InvoiceStatusType] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[InvoiceType] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[MM_CustomerSubscription] ADD  CONSTRAINT [DF__MM_Custom__AutoR__68487DD7]  DEFAULT ((0)) FOR [AutoRenewal]
GO
ALTER TABLE [dbo].[MM_CustomerSubscription] ADD  CONSTRAINT [DF__MM_Custom__IsAct__693CA210]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[MM_CustomerSubscription] ADD  CONSTRAINT [DF__MM_Custom__IsDel__6A30C649]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[MM_CustomerSubscription] ADD  CONSTRAINT [DF__MM_Custom__Creat__6B24EA82]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[MM_SubscriptionServices] ADD  CONSTRAINT [DF__MM_Subscr__AutoR__6383C8BA]  DEFAULT ((0)) FOR [AutoRenewal]
GO
ALTER TABLE [dbo].[MM_SubscriptionServices] ADD  CONSTRAINT [DF__MM_Subscr__IsAct__6477ECF3]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[MM_SubscriptionServices] ADD  CONSTRAINT [DF__MM_Subscr__IsDel__656C112C]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[MM_SubscriptionServices] ADD  CONSTRAINT [DF__MM_Subscr__Creat__66603565]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[OrderLine] ADD  DEFAULT ((0)) FOR [PriceExcludingVat]
GO
ALTER TABLE [dbo].[OrderLine] ADD  DEFAULT ((0)) FOR [VAT]
GO
ALTER TABLE [dbo].[OrderLine] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[OrderType] ADD  CONSTRAINT [DF__OrderType__IsDel__04E4BC85]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OrderType] ADD  CONSTRAINT [DF__OrderType__Creat__05D8E0BE]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[PaymentMethodType] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Service] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Subscription] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Subscription] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Subscription] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[SubscriptionType] ADD  DEFAULT ((0)) FOR [IsDailySubscription]
GO
ALTER TABLE [dbo].[SubscriptionType] ADD  DEFAULT ((0)) FOR [IsMonthlySubscription]
GO
ALTER TABLE [dbo].[SubscriptionType] ADD  DEFAULT ((0)) FOR [IsYearlySubscription]
GO
ALTER TABLE [dbo].[WebUser] ADD  CONSTRAINT [DF__WebUser__Id__29572725]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[WebUser] ADD  CONSTRAINT [DF__WebUser__IsUserA__2A4B4B5E]  DEFAULT ((0)) FOR [IsUserActive]
GO
ALTER TABLE [dbo].[WebUser] ADD  CONSTRAINT [DF__WebUser__IsUserL__2B3F6F97]  DEFAULT ((0)) FOR [IsUserLocked]
GO
ALTER TABLE [dbo].[WebUser] ADD  CONSTRAINT [DF__WebUser__IsDelet__2C3393D0]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[BaseCompany]  WITH CHECK ADD  CONSTRAINT [FK_BaseCompany_CompanyOwner] FOREIGN KEY([CompanyOwnerId])
REFERENCES [dbo].[CompanyOwner] ([Id])
GO
ALTER TABLE [dbo].[BaseCompany] CHECK CONSTRAINT [FK_BaseCompany_CompanyOwner]
GO
ALTER TABLE [dbo].[BaseCompany]  WITH CHECK ADD  CONSTRAINT [FK_BaseCompany_Countries] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[BaseCompany] CHECK CONSTRAINT [FK_BaseCompany_Countries]
GO
ALTER TABLE [dbo].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_Branch_BaseCompany] FOREIGN KEY([BaseCompanyId])
REFERENCES [dbo].[BaseCompany] ([Id])
GO
ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Branch_BaseCompany]
GO
ALTER TABLE [dbo].[CompanyOwner]  WITH CHECK ADD  CONSTRAINT [FK_CompanyOwner_WebUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[WebUser] ([Id])
GO
ALTER TABLE [dbo].[CompanyOwner] CHECK CONSTRAINT [FK_CompanyOwner_WebUser]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[WebUser] ([Id])
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_CustomerType] FOREIGN KEY([CustomerTypeId])
REFERENCES [dbo].[CustomerType] ([Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_CustomerType]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_WebUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[WebUser] ([Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_WebUser]
GO
ALTER TABLE [dbo].[DeliveryReport]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryReport_DeliveryAddress] FOREIGN KEY([DeliveryAddressId])
REFERENCES [dbo].[DeliveryAddress] ([Id])
GO
ALTER TABLE [dbo].[DeliveryReport] CHECK CONSTRAINT [FK_DeliveryReport_DeliveryAddress]
GO
ALTER TABLE [dbo].[DeliveryReport]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryReport_DeliveryStatusType] FOREIGN KEY([DeliveryStatusTypeId])
REFERENCES [dbo].[DeliveryStatusType] ([Id])
GO
ALTER TABLE [dbo].[DeliveryReport] CHECK CONSTRAINT [FK_DeliveryReport_DeliveryStatusType]
GO
ALTER TABLE [dbo].[DeliveryReport]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryReport_Vehicle] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicle] ([Id])
GO
ALTER TABLE [dbo].[DeliveryReport] CHECK CONSTRAINT [FK_DeliveryReport_Vehicle]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Branch] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Branch]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Designation] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[Designation] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Designation]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_WebUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[WebUser] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_WebUser]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_WebUser1] FOREIGN KEY([UserId])
REFERENCES [dbo].[WebUser] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_WebUser1]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_InvoiceStatusType] FOREIGN KEY([InvoiceStatusTypeId])
REFERENCES [dbo].[InvoiceStatusType] ([Id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_InvoiceStatusType]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_InvoiceType] FOREIGN KEY([InvoiceTypeId])
REFERENCES [dbo].[InvoiceType] ([Id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_InvoiceType]
GO
ALTER TABLE [dbo].[InvoiceLine]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceLine_Invoice] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Invoice] ([Id])
GO
ALTER TABLE [dbo].[InvoiceLine] CHECK CONSTRAINT [FK_InvoiceLine_Invoice]
GO
ALTER TABLE [dbo].[InvoiceLine]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceLine_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[InvoiceLine] CHECK CONSTRAINT [FK_InvoiceLine_Order]
GO
ALTER TABLE [dbo].[MM_CustomerSubscription]  WITH CHECK ADD  CONSTRAINT [FK_MM_CustomerSubscription_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[MM_CustomerSubscription] CHECK CONSTRAINT [FK_MM_CustomerSubscription_Customer]
GO
ALTER TABLE [dbo].[MM_CustomerSubscription]  WITH CHECK ADD  CONSTRAINT [FK_MM_CustomerSubscription_Subscription] FOREIGN KEY([SubscriptionId])
REFERENCES [dbo].[Subscription] ([Id])
GO
ALTER TABLE [dbo].[MM_CustomerSubscription] CHECK CONSTRAINT [FK_MM_CustomerSubscription_Subscription]
GO
ALTER TABLE [dbo].[MM_SubscriptionServices]  WITH CHECK ADD  CONSTRAINT [FK_MM_SubscriptionServices_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([Id])
GO
ALTER TABLE [dbo].[MM_SubscriptionServices] CHECK CONSTRAINT [FK_MM_SubscriptionServices_Service]
GO
ALTER TABLE [dbo].[MM_SubscriptionServices]  WITH CHECK ADD  CONSTRAINT [FK_MM_SubscriptionServices_Subscription] FOREIGN KEY([SubscriptionId])
REFERENCES [dbo].[Subscription] ([Id])
GO
ALTER TABLE [dbo].[MM_SubscriptionServices] CHECK CONSTRAINT [FK_MM_SubscriptionServices_Subscription]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Employee]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderType] FOREIGN KEY([OrderTypeId])
REFERENCES [dbo].[OrderType] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderType]
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK_OrderLine_Order]
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK_OrderLine_Product]
GO
ALTER TABLE [dbo].[PaymentMethod]  WITH CHECK ADD  CONSTRAINT [FK_PaymentMethod_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[PaymentMethod] CHECK CONSTRAINT [FK_PaymentMethod_Customer]
GO
ALTER TABLE [dbo].[PaymentMethod]  WITH CHECK ADD  CONSTRAINT [FK_PaymentMethod_PaymentCardType] FOREIGN KEY([CardTypeId])
REFERENCES [dbo].[PaymentMethodType] ([Id])
GO
ALTER TABLE [dbo].[PaymentMethod] CHECK CONSTRAINT [FK_PaymentMethod_PaymentCardType]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Branch] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Branch]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[ProductCategory] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[Subscription]  WITH CHECK ADD  CONSTRAINT [FK_Subscription_BaseCompany] FOREIGN KEY([BaseCompanyID])
REFERENCES [dbo].[BaseCompany] ([Id])
GO
ALTER TABLE [dbo].[Subscription] CHECK CONSTRAINT [FK_Subscription_BaseCompany]
GO
ALTER TABLE [dbo].[Subscription]  WITH CHECK ADD  CONSTRAINT [FK_Subscription_SubscriptionType] FOREIGN KEY([SubscriptionTypeId])
REFERENCES [dbo].[SubscriptionType] ([Id])
GO
ALTER TABLE [dbo].[Subscription] CHECK CONSTRAINT [FK_Subscription_SubscriptionType]
GO
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_Branch] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_Branch]
GO
ALTER TABLE [dbo].[WebUser]  WITH CHECK ADD  CONSTRAINT [FK_WebUser_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[WebUser] CHECK CONSTRAINT [FK_WebUser_Role]
GO
