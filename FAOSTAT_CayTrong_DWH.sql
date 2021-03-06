create database [FAOSTAT_CayTrong_DWH]
go
USE [FAOSTAT_CayTrong_DWH]
GO
/****** Object:  Table [dbo].[DimCountry]    Script Date: 5/21/2021 12:19:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCountry](
	[country_code] [int] NOT NULL,
	[country_name] [varchar](70) NULL,
 CONSTRAINT [PK__DimCount__3436E9A4A8702CAA] PRIMARY KEY CLUSTERED 
(
	[country_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimElement]    Script Date: 5/21/2021 12:19:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimElement](
	[element_code] [int] NOT NULL,
	[element_name] [varchar](100) NULL,
 CONSTRAINT [PK__DimEleme__36BE77F3D77B44DF] PRIMARY KEY CLUSTERED 
(
	[element_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimItem]    Script Date: 5/21/2021 12:19:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimItem](
	[item_code] [int] NOT NULL,
	[item_name] [varchar](150) NULL,
 CONSTRAINT [PK__DimItem__4A67201F2AEC1522] PRIMARY KEY CLUSTERED 
(
	[item_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimItemValue]    Script Date: 5/21/2021 12:19:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimItemValue](
	[item_code] [int] NOT NULL,
	[Ycode] [int] NULL,
	[measurement_value] [money] NULL,
	[element_code] [int] NULL,
	[country_code] [int] NULL,
 CONSTRAINT [PK__DimItemV__4A67201F5947C4E1] PRIMARY KEY CLUSTERED 
(
	[item_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimYear]    Script Date: 5/21/2021 12:19:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimYear](
	[Ycode] [int] NOT NULL,
	[TongSanLuongNam] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ycode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactThongKe]    Script Date: 5/21/2021 12:19:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactThongKe](
	[item_code] [int] NULL,
	[element_code] [int] NULL,
	[country_code] [int] NULL,
	[Ycode] [int] NULL,
	[SanLuong] [money] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactThongKe]  WITH CHECK ADD FOREIGN KEY([country_code])
REFERENCES [dbo].[DimCountry] ([country_code])
GO
ALTER TABLE [dbo].[FactThongKe]  WITH CHECK ADD FOREIGN KEY([element_code])
REFERENCES [dbo].[DimElement] ([element_code])
GO
ALTER TABLE [dbo].[FactThongKe]  WITH CHECK ADD FOREIGN KEY([item_code])
REFERENCES [dbo].[DimItem] ([item_code])
GO
ALTER TABLE [dbo].[FactThongKe]  WITH CHECK ADD FOREIGN KEY([Ycode])
REFERENCES [dbo].[DimYear] ([Ycode])
GO
