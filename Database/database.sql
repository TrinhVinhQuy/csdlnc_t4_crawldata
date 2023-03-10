USE [db_QLBQA_csdl]
GO
/****** Object:  Table [dbo].[tb_DanhMuc]    Script Date: 3/6/2023 9:08:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_DanhMuc](
	[dm_id] [int] IDENTITY(1,1) NOT NULL,
	[dm_sp] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[dm_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_SanPham]    Script Date: 3/6/2023 9:08:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_SanPham](
	[sp_id] [int] IDENTITY(1,1) NOT NULL,
	[sp_name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[sp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_SanPhamChiTiet]    Script Date: 3/6/2023 9:08:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_SanPhamChiTiet](
	[spct_id] [int] IDENTITY(1,1) NOT NULL,
	[spct_name] [nvarchar](max) NULL,
	[spct_image] [nvarchar](max) NULL,
	[spct_giathanh] [nvarchar](max) NULL,
	[dm_id] [int] NULL,
	[sp_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[spct_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tb_DanhMuc] ON 

INSERT [dbo].[tb_DanhMuc] ([dm_id], [dm_sp]) VALUES (1, N'Váy')
INSERT [dbo].[tb_DanhMuc] ([dm_id], [dm_sp]) VALUES (2, N'Đầm')
SET IDENTITY_INSERT [dbo].[tb_DanhMuc] OFF
SET IDENTITY_INSERT [dbo].[tb_SanPham] ON 

INSERT [dbo].[tb_SanPham] ([sp_id], [sp_name]) VALUES (1, N'MANGO
')
INSERT [dbo].[tb_SanPham] ([sp_id], [sp_name]) VALUES (2, N'EGANY
')
INSERT [dbo].[tb_SanPham] ([sp_id], [sp_name]) VALUES (3, N'LEVI''S
')
SET IDENTITY_INSERT [dbo].[tb_SanPham] OFF
SET IDENTITY_INSERT [dbo].[tb_SanPhamChiTiet] ON 

INSERT [dbo].[tb_SanPhamChiTiet] ([spct_id], [spct_name], [spct_image], [spct_giathanh], [dm_id], [sp_id]) VALUES (1, N'Váy Arta
', N'https://bizweb.dktcdn.net/thumb/large/100/448/042/products/load-8cec1ff06074466ab54947cb44ef3a5e-2920de0042754f4986a073a04fcc005e-b32adde8714d4409b3a027bcc93c59fd.jpg?v=1658372597000
', N'4.360.000₫
', 1, 1)
INSERT [dbo].[tb_SanPhamChiTiet] ([spct_id], [spct_name], [spct_image], [spct_giathanh], [dm_id], [sp_id]) VALUES (2, N'Váy Billy Knit
', N'https://bizweb.dktcdn.net/thumb/large/100/448/042/products/load-89556c652c42451bb548d434c2c1021c-410e9927bfba4677b0be04815b1539b1-dc3eb1eff79d476296dfeb092f57e137.jpg?v=1658372598000
', N'2.360.000₫
', 1, 1)
INSERT [dbo].[tb_SanPhamChiTiet] ([spct_id], [spct_name], [spct_image], [spct_giathanh], [dm_id], [sp_id]) VALUES (3, N'Váy kiểu Dasha
', N'https://bizweb.dktcdn.net/thumb/large/100/448/042/products/load-23eb8b0c1bfa4b7d9ca736f1713be27b-d1b16ded2fce4eb0928928900d3d2d4a-b7db8a9d5e1047e9bd18d24f8c64f6e4.jpg?v=1658372599000
', N'2.840.000₫
', 1, 2)
INSERT [dbo].[tb_SanPhamChiTiet] ([spct_id], [spct_name], [spct_image], [spct_giathanh], [dm_id], [sp_id]) VALUES (4, N'Váy Catarina
', N'https://bizweb.dktcdn.net/thumb/large/100/448/042/products/upload-2c6103091dce4265a85a586e927ccea5-82464ebb514247e1a799eca7398d66dd.jpg?v=1658372602000
', N'2.350.000₫
', 1, 2)
INSERT [dbo].[tb_SanPhamChiTiet] ([spct_id], [spct_name], [spct_image], [spct_giathanh], [dm_id], [sp_id]) VALUES (5, N'Váy East Maxi
', N'https://bizweb.dktcdn.net/thumb/large/100/448/042/products/upload-f256fc81a73e4fb09f88938719867a94-3c06860eb0304d97b2dbb1e27f103805.jpg?v=1658372602000
', N'2.150.000₫
', 1, 2)
INSERT [dbo].[tb_SanPhamChiTiet] ([spct_id], [spct_name], [spct_image], [spct_giathanh], [dm_id], [sp_id]) VALUES (6, N'Đầm Ngọc San Hô AYDA
', N'https://bizweb.dktcdn.net/thumb/large/100/448/042/products/upload-5a2fd7db0dcc49deacb6c9e0305708fc-fecafac8b10c4dde8a32d799db8ab624.jpg?v=1658372603000
', N'8.400.000₫
', 2, 3)
INSERT [dbo].[tb_SanPhamChiTiet] ([spct_id], [spct_name], [spct_image], [spct_giathanh], [dm_id], [sp_id]) VALUES (7, N'Đầm dạ hội Raya
', N'https://bizweb.dktcdn.net/thumb/large/100/448/042/products/upload-dcf234e3a3ca451f8e8b6cac099322d2-1971b4ded42f46f9b4b426cee20296e8.jpg?v=1658372603000
', N'5.430.000₫
', 2, 3)
INSERT [dbo].[tb_SanPhamChiTiet] ([spct_id], [spct_name], [spct_image], [spct_giathanh], [dm_id], [sp_id]) VALUES (8, N'Đầm cổ vuông Laura
', N'https://bizweb.dktcdn.net/thumb/large/100/448/042/products/upload-eb52b25811fc4113aca9ff88a03d4b23-b2a9f227d2ac4b228458c8151bc1dbcd.jpg?v=1658372605000
', N'3.240.000₫
', 2, 3)
INSERT [dbo].[tb_SanPhamChiTiet] ([spct_id], [spct_name], [spct_image], [spct_giathanh], [dm_id], [sp_id]) VALUES (9, N'Đầm xoè Taylor
', N'https://bizweb.dktcdn.net/thumb/large/100/448/042/products/load-0bb98861438341bb907a3d378d7830bb-fe65ee9a38b44fcc916c3a28b9a12c69-4a02454f11da42cb906cde16eae3767c.jpg?v=1658372604000
', N'3.550.000₫
', 2, 3)
INSERT [dbo].[tb_SanPhamChiTiet] ([spct_id], [spct_name], [spct_image], [spct_giathanh], [dm_id], [sp_id]) VALUES (10, N'Đầm dạ hội Eva
', N'https://bizweb.dktcdn.net/thumb/large/100/448/042/products/load-443ce743d7904b2f97bf71e0447a460e-ae8ed03d96ab4866b60d1404e5a2484e-9e078084b65c4dc0908843db90e9de65.jpg?v=1658372603000
', N'6.540.000₫
', 2, 2)
SET IDENTITY_INSERT [dbo].[tb_SanPhamChiTiet] OFF
ALTER TABLE [dbo].[tb_SanPhamChiTiet]  WITH CHECK ADD FOREIGN KEY([dm_id])
REFERENCES [dbo].[tb_DanhMuc] ([dm_id])
GO
ALTER TABLE [dbo].[tb_SanPhamChiTiet]  WITH CHECK ADD FOREIGN KEY([sp_id])
REFERENCES [dbo].[tb_SanPham] ([sp_id])
GO
