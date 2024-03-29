USE [Group1A_Assignment]
GO
/****** Object:  Table [dbo].[OrderedDetails]    Script Date: 10/7/2019 5:02:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderedDetails](
	[Id] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Ordered_quantity] [int] NOT NULL,
	[Ordered_date] [date] NOT NULL,
 CONSTRAINT [PK_OrderedDetailed] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/7/2019 5:02:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[price] [varchar](50) NOT NULL,
	[quantity] [varchar](50) NOT NULL,
	[short_description] [varchar](50) NOT NULL,
	[image_path] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchasedProduct]    Script Date: 10/7/2019 5:02:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchasedProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [varchar](50) NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
	[ProductDetails] [varchar](50) NOT NULL,
	[ProductPurchasedDate] [varchar](50) NOT NULL,
	[ProductActivationCode] [varchar](300) NOT NULL,
	[ProductImagePath] [varchar](100) NOT NULL,
	[CustomerId] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/7/2019 5:02:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[confirmpassword] [varchar](50),
	[Emailaddress] [varchar](50)
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [name], [price], [quantity], [short_description], [image_path]) VALUES (1, N'Software Developer', N'$24', N'8', N'The best guide for developers', N'Image/Product/Software/software_01.jpg')
INSERT [dbo].[Product] ([Id], [name], [price], [quantity], [short_description], [image_path]) VALUES (2, N'Beginning Programming', N'$14', N'3', N'Note for students and developer', N'Image/Product/Software/software_02.jpg')
INSERT [dbo].[Product] ([Id], [name], [price], [quantity], [short_description], [image_path]) VALUES (3, N'Office Professional 2007', N'$31', N'5', N'The best guide for developers', N'Image/Product/Software/software_03.jpg')
INSERT [dbo].[Product] ([Id], [name], [price], [quantity], [short_description], [image_path]) VALUES (4, N'Window 7', N'$21', N'7', N'Normal Window with best features', N'Image/Product/Software/software_04.jpg')
INSERT [dbo].[Product] ([Id], [name], [price], [quantity], [short_description], [image_path]) VALUES (5, N'AgeofEmpires', N'$37', N'2', N'Game', N'Image/Product/Software/software_05.png')
INSERT [dbo].[Product] ([Id], [name], [price], [quantity], [short_description], [image_path]) VALUES (6, N'Linux', N'$27', N'15', N'OS for users', N'Image/Product/Software/software_06.png')
INSERT [dbo].[Product] ([Id], [name], [price], [quantity], [short_description], [image_path]) VALUES (7, N'Need for Speed', N'$9', N'25', N'Game', N'Image/Product/Software/software_07.png')
INSERT [dbo].[Product] ([Id], [name], [price], [quantity], [short_description], [image_path]) VALUES (8, N'Office 365 Personal', N'$32', N'15', N'OfficeUse', N'Image/Product/Software/software_08.png')
INSERT [dbo].[Product] ([Id], [name], [price], [quantity], [short_description], [image_path]) VALUES (9, N'Photo Editor', N'$42', N'15', N'The best Photo Editor', N'Image/Product/Software/software_09.png')
INSERT [dbo].[Product] ([Id], [name], [price], [quantity], [short_description], [image_path]) VALUES (12, N'City Motion', N'$42', N'15', N'Game', N'Image/Product/Software/software_12.png')
INSERT [dbo].[Product] ([Id], [name], [price], [quantity], [short_description], [image_path]) VALUES (13, N'PowerPoint', N'$12', N'25', N'Microsoft product', N'Image/Product/Software/software_13.png')
INSERT [dbo].[Product] ([Id], [name], [price], [quantity], [short_description], [image_path]) VALUES (14, N'Narton', N'$62', N'55', N'Defends against viruses, spyware.', N'Image/Product/Software/software_14.png')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[PurchasedProduct] ON 

SET IDENTITY_INSERT [dbo].[PurchasedProduct] OFF
INSERT [dbo].[Users] ([Id], [name], [password],[confirmpassword],[Emailaddress]) VALUES (1, N'phyu', N'1965336379',N'1965336379',N'test@mail.com')
INSERT [dbo].[Users] ([Id], [name], [password],[confirmpassword],[Emailaddress]) VALUES (2, N'aye', N'1965336379',N'1965336379',N'test1@mail.com')
