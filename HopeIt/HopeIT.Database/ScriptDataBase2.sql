USE [HopeIT]
GO
/****** Object:  Table [dbo].[AppUser]    Script Date: 28.10.2017 16:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_AppUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonationDetails]    Script Date: 28.10.2017 16:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonationDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdAppUser] [int] NOT NULL,
	[Kwota] [decimal](18, 0) NOT NULL,
	[Opis] [text] NULL,
 CONSTRAINT [PK_DonationDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AppUser] ON 

GO
INSERT [dbo].[AppUser] ([Id], [Name]) VALUES (1, N'Maciek')
GO
INSERT [dbo].[AppUser] ([Id], [Name]) VALUES (2, N'Tomato-Soup')
GO
INSERT [dbo].[AppUser] ([Id], [Name]) VALUES (3, N'Yo-Yo')
GO
INSERT [dbo].[AppUser] ([Id], [Name]) VALUES (4, N'Hammer-Ho')
GO
INSERT [dbo].[AppUser] ([Id], [Name]) VALUES (5, N'test buyer')
GO
INSERT [dbo].[AppUser] ([Id], [Name]) VALUES (6, N'Hope IT')
GO
INSERT [dbo].[AppUser] ([Id], [Name]) VALUES (7, N'Hope IT')
GO
SET IDENTITY_INSERT [dbo].[AppUser] OFF
GO
SET IDENTITY_INSERT [dbo].[DonationDetails] ON 

GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (1, 1, CAST(120 AS Decimal(18, 0)), N'abc')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (2, 1, CAST(99 AS Decimal(18, 0)), N'www')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (3, 2, CAST(200 AS Decimal(18, 0)), N'phone')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (4, 1, CAST(120 AS Decimal(18, 0)), N'wlasna wplata ')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (5, 1, CAST(10 AS Decimal(18, 0)), N'Dotacja od Marka i Asi')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (6, 5, CAST(13 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (7, 6, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (8, 6, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (9, 7, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (10, 7, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (11, 5, CAST(13 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (12, 6, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (13, 6, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (14, 7, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (15, 7, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (16, 5, CAST(13 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (17, 6, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (18, 6, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (19, 7, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (20, 7, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (21, 5, CAST(13 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (22, 6, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (23, 6, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (24, 7, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (25, 7, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (26, 5, CAST(13 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (27, 6, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (28, 6, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (29, 7, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (30, 7, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (31, 5, CAST(13 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (32, 6, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (33, 6, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (34, 7, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (35, 7, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (36, 5, CAST(13 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (37, 6, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (38, 6, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (39, 7, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (40, 7, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (41, 5, CAST(13 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (42, 6, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (43, 6, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (44, 7, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (45, 7, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (46, 5, CAST(13 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (47, 6, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (48, 6, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (49, 7, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (50, 7, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (51, 5, CAST(13 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (52, 6, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (53, 6, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (54, 7, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (55, 7, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (56, 5, CAST(13 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (57, 6, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (58, 6, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (59, 7, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (60, 7, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (61, 5, CAST(13 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (62, 6, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (63, 6, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (64, 7, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (65, 7, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (66, 5, CAST(13 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (67, 6, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (68, 6, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (69, 7, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (70, 7, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (71, 5, CAST(13 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (72, 6, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (73, 6, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (74, 7, CAST(15 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
INSERT [dbo].[DonationDetails] ([Id], [IdAppUser], [Kwota], [Opis]) VALUES (75, 7, CAST(19 AS Decimal(18, 0)), N'BeerPal Brewery Shopping Cart Purchase')
GO
SET IDENTITY_INSERT [dbo].[DonationDetails] OFF
GO
ALTER TABLE [dbo].[DonationDetails]  WITH CHECK ADD  CONSTRAINT [FK_DonationDetails_AppUser] FOREIGN KEY([IdAppUser])
REFERENCES [dbo].[AppUser] ([Id])
GO
ALTER TABLE [dbo].[DonationDetails] CHECK CONSTRAINT [FK_DonationDetails_AppUser]
GO
