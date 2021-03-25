
CREATE TABLE [dbo].[Categories](
	[Id_Category] [int] NOT NULL,
	[Category_Name] [nchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id_Category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Products](
	[Id_Product] [int] NOT NULL,
	[Product_Name] [nchar](50) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[CategoryProducts](
	[Id] [int] NOT NULL,
	[Id_Category] [int] NULL,
	[Id_Product] [int] NULL,
 CONSTRAINT [PK_CategoryProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[CategoryProducts]  WITH CHECK ADD  CONSTRAINT [FK_CategoryProducts_Categories] FOREIGN KEY([Id_Category])
REFERENCES [dbo].[Categories] ([Id_Category])

INSERT [dbo].[Categories] ([Id_Category], [Category_Name]) VALUES (1, N'foodstuffs              ')
INSERT [dbo].[Categories] ([Id_Category], [Category_Name]) VALUES (2, N'dairy_products          ')
INSERT [dbo].[Categories] ([Id_Category], [Category_Name]) VALUES (3, N'grocery                 ')
INSERT [dbo].[Categories] ([Id_Category], [Category_Name]) VALUES (4, N'confectionery           ')
INSERT [dbo].[Categories] ([Id_Category], [Category_Name]) VALUES (5, N'bakery_products         ')
INSERT [dbo].[Categories] ([Id_Category], [Category_Name]) VALUES (6, N'cheeses                 ')
INSERT [dbo].[Categories] ([Id_Category], [Category_Name]) VALUES (7, N'household_chemicals     ')
INSERT [dbo].[Categories] ([Id_Category], [Category_Name]) VALUES (8, N'appliances              ')
INSERT [dbo].[Categories] ([Id_Category], [Category_Name]) VALUES (9, N'fruits_vegetables       ')
INSERT [dbo].[Products] ([Id_Product], [Product_Name]) VALUES (1, N'yogurt                  ')
INSERT [dbo].[Products] ([Id_Product], [Product_Name]) VALUES (2, N'milk                    ')
INSERT [dbo].[Products] ([Id_Product], [Product_Name]) VALUES (3, N'cheese                  ')
INSERT [dbo].[Products] ([Id_Product], [Product_Name]) VALUES (4, N'washing_powder          ')
INSERT [dbo].[Products] ([Id_Product], [Product_Name]) VALUES (5, N'apple                   ')
INSERT [dbo].[Products] ([Id_Product], [Product_Name]) VALUES (6, N'cucumber                ')
INSERT [dbo].[Products] ([Id_Product], [Product_Name]) VALUES (7, N'cake                    ')
INSERT [dbo].[Products] ([Id_Product], [Product_Name]) VALUES (8, N'bread                   ')
INSERT [dbo].[Products] ([Id_Product], [Product_Name]) VALUES (9, N'eggs                    ')
INSERT [dbo].[Products] ([Id_Product], [Product_Name]) VALUES (10, N'TV                      ')
INSERT [dbo].[Products] ([Id_Product], [Product_Name]) VALUES (11, N'pasta                   ')
INSERT [dbo].[Products] ([Id_Product], [Product_Name]) VALUES (12, N'buckwheat               ')
INSERT [dbo].[CategoryProducts] ([Id], [Id_Category], [Id_Product]) VALUES (1, 2, 1)
INSERT [dbo].[CategoryProducts] ([Id], [Id_Category], [Id_Product]) VALUES (2, 1, 1)
INSERT [dbo].[CategoryProducts] ([Id], [Id_Category], [Id_Product]) VALUES (3, 3, 11)
INSERT [dbo].[CategoryProducts] ([Id], [Id_Category], [Id_Product]) VALUES (4, 4, 7)
INSERT [dbo].[CategoryProducts] ([Id], [Id_Category], [Id_Product]) VALUES (5, 5, 8)
INSERT [dbo].[CategoryProducts] ([Id], [Id_Category], [Id_Product]) VALUES (6, 9, 5)
INSERT [dbo].[CategoryProducts] ([Id], [Id_Category], [Id_Product]) VALUES (7, 9, 6)
INSERT [dbo].[CategoryProducts] ([Id], [Id_Category], [Id_Product]) VALUES (8, 3, 12)
INSERT [dbo].[CategoryProducts] ([Id], [Id_Category], [Id_Product]) VALUES (9, 7, 4)
INSERT [dbo].[CategoryProducts] ([Id], [Id_Category], [Id_Product]) VALUES (10, 6, 3)
INSERT [dbo].[CategoryProducts] ([Id], [Id_Category], [Id_Product]) VALUES (11, 1, 9)

--Query
SELECT P.Product_Name, C.Category_Name FROM CategoryProducts CP
LEFT JOIN Products P 
ON CP.Id_Product = P.Id_Product
LEFT JOIN Categories C
ON CP.Id_Category = C.Id_Category