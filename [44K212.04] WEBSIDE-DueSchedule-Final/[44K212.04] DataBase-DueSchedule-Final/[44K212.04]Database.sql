CREATE DATABASE THUVIEN
USE [THUVIEN]
GO
/****** Object:  Table [dbo].[LICHDAT]    Script Date: 3/29/2021 2:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LICHDAT](
	[MaDat] [char](8) NOT NULL,
	[MaTT] [char](8) NOT NULL,
	[NgayDat] [date] NOT NULL,
	[KhungGio] [nvarchar](20) NOT NULL,
	[TrangThaiLV] [bit] NOT NULL,
	[SoLuongSV] [int] NOT NULL CHECK (SoluongSV <51) ,
	
PRIMARY KEY CLUSTERED 
(
	[MaDat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LICHDATCHITIET]    Script Date: 3/29/2021 2:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LICHDATCHITIET](
	[MaDat] [char](8) NOT NULL,
	[MaSV] [char](12) NOT NULL,
	[TrangThaiDat] [nvarchar](50) NULL,
 CONSTRAINT [PK_LICH] PRIMARY KEY CLUSTERED 
(
	[MaDat] ASC,
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 3/29/2021 2:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MaSV] [char](12) NOT NULL,
	[HoTenSV] [nvarchar](50) NOT NULL,
	[Lop] [nvarchar](10) NOT NULL,
	[NgaySinhSV] [date] NOT NULL,
	[GioiTinhSV] [nvarchar](3) NOT NULL,
	[DiaChiSV] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOANSV]    Script Date: 3/29/2021 2:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOANSV](
	[MaTKSV] [char](8) NOT NULL,
	[MaSV] [char](12) NOT NULL,
	[MatKhauSV] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTKSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOANTT]    Script Date: 3/29/2021 2:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOANTT](
	[MaTKTT] [char](8) NOT NULL,
	[MaTT] [char](8) NOT NULL,
	[MatKhauTT] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTKTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUTHU]    Script Date: 3/29/2021 2:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUTHU](
	[MaTT] [char](8) NOT NULL,
	[HoVaTenTT] [nvarchar](50) NOT NULL,
	[NgaySinhTT] [date] NOT NULL,
	[GioiTinhTT] [nvarchar](3) NOT NULL,
	[DiaChiTT] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LICHDAT] ([MaDat], [MaTT], [NgayDat], [KhungGio], [TrangThaiLV], [SoLuongSV]) VALUES (N'T0000001', N'TT000001', CAST(N'2021-04-03' AS Date), N'07:00 - 09:00', 1, 10)
INSERT [dbo].[LICHDAT] ([MaDat], [MaTT], [NgayDat], [KhungGio], [TrangThaiLV], [SoLuongSV]) VALUES (N'T0000002', N'TT000001', CAST(N'2021-04-03' AS Date), N'09:00 - 11:00', 1, 14)
INSERT [dbo].[LICHDAT] ([MaDat], [MaTT], [NgayDat], [KhungGio], [TrangThaiLV], [SoLuongSV]) VALUES (N'T0000003', N'TT000002', CAST(N'2021-04-03' AS Date), N'13:30 - 15:30', 1, 12)
INSERT [dbo].[LICHDAT] ([MaDat], [MaTT], [NgayDat], [KhungGio], [TrangThaiLV], [SoLuongSV]) VALUES (N'T0000004', N'TT000002', CAST(N'2021-04-03' AS Date), N'15:30 - 17:30', 1, 13)
INSERT [dbo].[LICHDAT] ([MaDat], [MaTT], [NgayDat], [KhungGio], [TrangThaiLV], [SoLuongSV]) VALUES (N'T0000005', N'TT000003', CAST(N'2021-04-04' AS Date), N'07:00 - 09:00', 1, 15)
INSERT [dbo].[LICHDAT] ([MaDat], [MaTT], [NgayDat], [KhungGio], [TrangThaiLV], [SoLuongSV]) VALUES (N'T0000006', N'TT000003', CAST(N'2021-04-04' AS Date), N'09:00 - 11:00', 1, 13)
INSERT [dbo].[LICHDAT] ([MaDat], [MaTT], [NgayDat], [KhungGio], [TrangThaiLV], [SoLuongSV]) VALUES (N'T0000007', N'TT000004', CAST(N'2021-04-04' AS Date), N'13:30 - 15:30', 1, 12)
INSERT [dbo].[LICHDAT] ([MaDat], [MaTT], [NgayDat], [KhungGio], [TrangThaiLV], [SoLuongSV]) VALUES (N'T0000008', N'TT000004', CAST(N'2021-04-04' AS Date), N'15:30 - 17:30', 1, 11)
INSERT [dbo].[LICHDAT] ([MaDat], [MaTT], [NgayDat], [KhungGio], [TrangThaiLV], [SoLuongSV]) VALUES (N'T0000009', N'TT000005', CAST(N'2021-04-05' AS Date), N'07:00 - 09:00', 1, 11)
INSERT [dbo].[LICHDAT] ([MaDat], [MaTT], [NgayDat], [KhungGio], [TrangThaiLV], [SoLuongSV]) VALUES (N'T0000010', N'TT000005', CAST(N'2021-04-05' AS Date), N'09:00 - 11:00', 1, 10)
INSERT [dbo].[LICHDAT] ([MaDat], [MaTT], [NgayDat], [KhungGio], [TrangThaiLV], [SoLuongSV]) VALUES (N'T0000011', N'TT000001', CAST(N'2021-04-05' AS Date), N'13:30 - 15:30', 1, 11)
INSERT [dbo].[LICHDAT] ([MaDat], [MaTT], [NgayDat], [KhungGio], [TrangThaiLV], [SoLuongSV]) VALUES (N'T0000012', N'TT000001', CAST(N'2021-04-05' AS Date), N'15:30 - 17:30', 1, 10)
GO
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000001', N'181121521000', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000001', N'181121521001', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000001', N'181121521002', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000001', N'181121521003', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000001', N'181121521004', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000001', N'181121521005', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000001', N'181121521006', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000001', N'181121521007', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000001', N'181121521008', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000001', N'181121521009', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000002', N'181121521011', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000002', N'181121521012', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000002', N'181121521013', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000002', N'181121521014', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000002', N'181121521015', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000002', N'181121521016', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000002', N'181121521017', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000002', N'181121521018', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000002', N'181121521019', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000002', N'181121521020', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000002', N'181121521021', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000002', N'181121521022', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000002', N'181121521023', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000002', N'181121521024', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000003', N'181121521011', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000003', N'181121521012', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000003', N'181121521013', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000003', N'181121521014', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000003', N'181121521015', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000003', N'181121521016', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000003', N'181121521017', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000003', N'181121521018', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000003', N'181121521019', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000003', N'181121521020', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000003', N'181121521021', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000003', N'181121521022', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000004', N'181121521022', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000004', N'181121521023', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000004', N'181121521024', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000004', N'181121521025', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000004', N'181121521026', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000004', N'181121521027', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000004', N'181121521028', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000004', N'181121521029', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000004', N'181121521030', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000004', N'181121521031', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000004', N'181121521032', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000004', N'181121521033', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000004', N'181121521034', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000005', N'181121521000', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000005', N'181121521001', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000005', N'181121521002', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000005', N'181121521003', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000005', N'181121521004', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000005', N'181121521005', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000005', N'181121521006', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000005', N'181121521007', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000005', N'181121521008', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000005', N'181121521009', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000005', N'181121521010', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000005', N'181121521011', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000005', N'181121521012', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000005', N'181121521013', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000005', N'181121521014', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000006', N'181121521016', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000006', N'181121521017', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000006', N'181121521018', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000006', N'181121521019', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000006', N'181121521020', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000006', N'181121521021', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000006', N'181121521022', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000006', N'181121521023', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000006', N'181121521024', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000006', N'181121521025', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000006', N'181121521026', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000006', N'181121521027', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000006', N'181121521028', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000007', N'181121521016', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000007', N'181121521017', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000007', N'181121521018', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000007', N'181121521019', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000007', N'181121521020', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000007', N'181121521021', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000007', N'181121521022', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000007', N'181121521023', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000007', N'181121521024', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000007', N'181121521025', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000007', N'181121521026', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000007', N'181121521027', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000008', N'181121521016', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000008', N'181121521017', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000008', N'181121521018', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000008', N'181121521019', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000008', N'181121521020', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000008', N'181121521021', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000008', N'181121521022', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000008', N'181121521023', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000008', N'181121521024', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000008', N'181121521025', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000008', N'181121521026', N'')
GO
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000009', N'181121521025', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000009', N'181121521026', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000009', N'181121521027', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000009', N'181121521028', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000009', N'181121521029', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000009', N'181121521030', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000009', N'181121521031', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000009', N'181121521032', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000009', N'181121521033', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000009', N'181121521034', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000009', N'181121521035', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000010', N'181121521000', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000010', N'181121521001', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000010', N'181121521002', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000010', N'181121521003', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000010', N'181121521004', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000010', N'181121521005', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000010', N'181121521006', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000010', N'181121521007', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000010', N'181121521008', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000010', N'181121521009', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000011', N'181121521034', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000011', N'181121521035', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000011', N'181121521036', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000011', N'181121521037', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000011', N'181121521038', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000011', N'181121521039', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000011', N'181121521040', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000011', N'181121521041', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000011', N'181121521042', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000011', N'181121521043', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000011', N'181121521044', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000012', N'181121521025', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000012', N'181121521026', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000012', N'181121521027', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000012', N'181121521028', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000012', N'181121521029', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000012', N'181121521030', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000012', N'181121521031', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000012', N'181121521032', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000012', N'181121521033', N'')
INSERT [dbo].[LICHDATCHITIET] ([MaDat], [MaSV], [TrangThaiDat]) VALUES (N'T0000012', N'181121521034', N'')
GO
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521000', N'Lê Phương Mỹ Duyên', N'44K01', CAST(N'2000-05-20' AS Date), N'Nữ', N'SỐ 18 AN TÚ CÔNG CHÚA, PHƯỜNG MỸ AN, NGŨ HÀNH SƠN')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521001', N'Trương Nguyên Khoa', N'44K01', CAST(N'2000-04-23' AS Date), N'Nữ', N'215/90 VÕ VĂN KIỆT, PHƯỜNG THANH XUÂN, TP BUÔN MA THUỘT, ĐĂK LĂK')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521002', N'Ngô Thị Xuân Thảo', N'44K01', CAST(N'2000-04-03' AS Date), N'Nữ', N'TRUNG THIỆN, DƯƠNG THỦY, LỆ THỦY, QUẢNG BÌNH')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521003', N'Phan Thị Thương', N'44K01', CAST(N'2000-02-05' AS Date), N'Nữ', N'19 ĐƯỜNG SỐ 1, ĐIỆN QUANG, ĐIỆN BÀN, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521004', N'Nguyễn Thị Thùy Trâm', N'44K01', CAST(N'2000-03-23' AS Date), N'Nữ', N'HÒA SƠN, HÒA VANG, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521005', N'Lương Thị Thùy Trang', N'44K01', CAST(N'2000-05-10' AS Date), N'Nữ', N'TỔ DÂN PHỐ 4,P NAM LÝ, TP ĐỒNG HỚI, QUẢNG BÌNH')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521006', N'Nguyễn Thị Thùy Trang', N'44K01', CAST(N'2000-02-02' AS Date), N'Nữ', N'K79/4 THANH THỦY, HẢI CHÂU, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521007', N'Tôn Nữ Thục Anh', N'44K01', CAST(N'2000-12-09' AS Date), N'Nữ', N'06 NGUYỄN THỊ ĐỊNH, SƠN TRÀ, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521008', N'Lê Hồng Gia Bảo', N'44K01', CAST(N'2000-03-20' AS Date), N'Nữ', N'THÔN THANH QUÝT 1, ĐIỆN THẮNG TRUNG, ĐIỆN BÀN, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521009', N'Đào Ngọc Bách Nguyên', N'44K01', CAST(N'2000-02-22' AS Date), N'Nữ', N'TỔ 27A, NẠI HIÊN ĐÔNG, SƠN TRÀ, TP. ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521010', N'Trần Thụy Bảo Trân', N'44K01', CAST(N'2000-08-12' AS Date), N'Nữ', N'PHAN THỊ HỒNG PHƯỢNG, THÔN 1B, XÃ ĐỒNG TRẠCH, BỐ TRẠCH, QUẢNG BÌNH')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521011', N'Phan Thị Quỳnh Trang', N'44K01', CAST(N'2000-11-03' AS Date), N'Nữ', N'KHỐI HẬU XÁ, TỔ 37, PHƯỜNG THANH HÀ, TP. HỘI AN, TỈNH QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521012', N'Đinh Phan Hoài Nhân', N'44K01', CAST(N'2000-08-08' AS Date), N'Nam', N'294 HUỲNH THÚC KHÁNG, AN XUÂN, TAM KỲ, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521013', N'Lê Tất Minh Nhật', N'44K01', CAST(N'2000-05-09' AS Date), N'Nam', N'193/12 NÚI THÀNH, PHƯỜNG HÒA CƯỜNG BẮC, HẢI CHÂU, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521014', N'Bùi Thảo Nhi', N'44K01', CAST(N'2000-01-12' AS Date), N'Nữ', N'BƯU ĐIỆN BÌNH TRỊ, THĂNG BÌNH, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521015', N'Lê Tôn Tân Thịnh', N'44K01', CAST(N'2000-01-22' AS Date), N'Nam', N'1/45 QUANG TRUNG, KHU PHỐ 2, PHƯỜNG 2, THỊ XÃ QUẢNG TRỊ, TỈNH QUẢNG TRỊ')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521016', N'Nguyễn Thị Phương Truyền', N'44K01', CAST(N'2000-05-29' AS Date), N'Nữ', N'15A VÕ VĂN TẦN, QUY NHƠN, BÌNH ĐỊNH')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521017', N'Lê Vy', N'44K01', CAST(N'2000-01-27' AS Date), N'Nữ', N'KHU VỰC VẠN THUẬN, PHƯỜNG NHƠN THÀNH, TX AN NHƠN, BÌNH ĐỊNH')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521018', N'Phạm Thùy Ngọc Ánh', N'44K01', CAST(N'2000-01-01' AS Date), N'Nữ', N'HUỲNH HÙNG, THÔN 4, XÃ HÒA PHONG, KRÔNG BÔNG, ĐĂK LĂK')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521019', N'Trần Minh Chính', N'44K01', CAST(N'2000-11-12' AS Date), N'Nam', N'KIỆT 38 TÔN THẤT SƠN, THỦY PHƯƠNG, HƯƠNG THỦY, TT HUẾ')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521020', N'Võ Thị Nhân', N'44K01', CAST(N'2000-09-19' AS Date), N'Nữ', N'TỔ 37B KHU VỰC 4, SỐ NHÀ 20/6A CHI LĂNG, QUY NHƠN, BÌNH ĐỊNH')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521021', N'Nguyễn Văn Tiến Đạt', N'44K01', CAST(N'2000-04-24' AS Date), N'Nam', N'01 THOẠI NGỌC HẦU, TAM KỲ, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521022', N'Phan Trí Nhân', N'44K01', CAST(N'2000-02-14' AS Date), N'Nam', N'TỔ 37B KHU VỰC 4, SỐ NHÀ 20/6A CHI LĂNG, QUY NHƠN, BÌNH ĐỊNH')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521023', N'Nguyễn Ái Duyên', N'44K01', CAST(N'2000-10-22' AS Date), N'Nữ', N'SỐ 31 ĐƯỜNG HÒA MINH 4, LIÊN CHIỂU, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521024', N'Đinh Bảo Khanh', N'44K01', CAST(N'2000-11-11' AS Date), N'Nam', N'11 THÚC TỀ, THANH KHÊ, TP. ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521025', N'Võ Thành Nhân', N'44K01', CAST(N'2000-05-04' AS Date), N'Nam', N'NGUYỄN THỊ MINH TRÂM, DN BITIS ĐÀ NẴNG, ĐƯỜNG SỐ 2, KCN HÒA KHÁNH, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521026', N'Phan Phụng Quốc', N'44K01', CAST(N'2000-04-05' AS Date), N'Nam', N'ĐỘI 7, THÔN 8, TAM LỘC, PHÚ NINH, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521027', N'Dương Thị Ngọc Anh', N'44K01', CAST(N'2000-05-20' AS Date), N'Nữ', N'16 LÝ THÁNH TÔNG, ĐỒNG HỚI, QUẢNG BÌNH')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521028', N'Trần Thị Minh Anh', N'44K01', CAST(N'2000-03-10' AS Date), N'Nữ', N'41 ĐINH TIÊN HOÀNG, KHÓM VĨNH BẮC, HỒ XÁ, VĨNH LINH, QUẢNG TRỊ')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521029', N'Đinh Thị Thảo Nguyên', N'44K01', CAST(N'2000-03-08' AS Date), N'Nữ', N'TỔ 45 ĐA PHƯỚC II, HÒA KHÁNH BẮC, LIÊN CHIỂU, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521030', N'Nguyễn Thị Thương', N'44K01', CAST(N'2000-10-02' AS Date), N'Nữ', N'487 TRẦN CAO VÂN, TP. ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521031', N'Nguyễn Thị Thùy', N'44K01', CAST(N'2000-11-02' AS Date), N'Nữ', N'KHỐI PHỐ TỨ HÀ, ĐIỆN NGỌC, ĐIỆN BÀN, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521032', N'Huỳnh Thị Tuyết Trinh', N'44K01', CAST(N'2000-08-06' AS Date), N'Nữ', N'43 Ð? NHU?N, ÐÀ N?NG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521033', N'Trần Mỹ Gia Hân', N'44K01', CAST(N'2000-07-08' AS Date), N'Nữ', N'724B TRẦN CAO VÂN, THANH KHÊ, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521034', N'Nguyễn Tiến Minh', N'44K05', CAST(N'2000-07-01' AS Date), N'Nam', N'TỔ 38, HÒA HIỆP NAM, LIÊN CHIỂU, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521035', N'Lưu Thị Thu Hương', N'44K05', CAST(N'2000-01-04' AS Date), N'Nữ', N'K89/47 LÊ VĂN HƯU, PHƯỜNG MỸ AN, NGŨ HÀNH SƠN, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521036', N'Lê Thị Ngọc Huyền', N'44K05', CAST(N'2000-05-23' AS Date), N'Nữ', N'370 HÙNG VƯƠNG, HỘI AN, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521037', N'Nguyễn Văn Bảo', N'44K05', CAST(N'2000-05-20' AS Date), N'Nam', N'K111/17 ĐƯỜNG 2-9, HẢI CHÂU, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521038', N'Lê Đình Đức', N'44K05', CAST(N'2000-09-23' AS Date), N'Nam', N'THÔN ĐÔNG GIA, ĐẠI MINH, ĐẠI LỘC, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521039', N'Nguyễn Thị Hương', N'44K05', CAST(N'2000-01-25' AS Date), N'Nữ', N'8/2c Phạm Hồng Thái, P.Vĩnh Ninh, TP Huế, Thừa Thiên Huế')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521040', N'Lương Thế Phong', N'44K05', CAST(N'2000-04-27' AS Date), N'Nam', N'THÔN 3, QUẾ CƯỜNG, QUẾ SƠN, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521041', N'Nguyễn Phạm Minh Phúc', N'44K05', CAST(N'2000-06-23' AS Date), N'Nam', N'178 Lí Thu?ng Ki?t, Ðà N?ng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521042', N'Hứa Quốc Trường', N'44K05', CAST(N'2000-03-29' AS Date), N'Nam', N'Quá Giáng 1, Hòa Phước, Hòa Vang, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521043', N'Trịnh Thị Mai', N'44K05', CAST(N'2000-04-30' AS Date), N'Nữ', N'Tiên Lập, Tiên Phước, Quảng Nam')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521044', N'Nguyễn Xuân Nho', N'44K05', CAST(N'2000-05-01' AS Date), N'Nam', N'58 HÙNG VƯƠNG, TX BA ĐỒN,K218 Nguyễn Duy Hạnh')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521045', N'Phan Công Quang', N'44K05', CAST(N'2000-03-14' AS Date), N'Nam', N'Giáo Tây, Đại Hòa, Đại Lộc, QUẢNG BÌNH')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521046', N'Hoàng Văn Quyết', N'44K05', CAST(N'2000-05-14' AS Date), N'Nam', N'THÔN PHÚ HƯNG, XÃ TAM XUÂN 1, NÚI THÀNH, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521047', N'Lê Văn Tiến', N'44K05', CAST(N'2000-08-18' AS Date), N'Nam', N'79 BÀ TRIỆU, PHƯỜNG I, TP ĐÔNG HÀ, QUẢNG TRỊ')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521048', N'Nguyễn Quốc Trình', N'44K05', CAST(N'2000-11-23' AS Date), N'Nam', N'412 CÁCH MẠNG THÁNG 8, QUẬN CẨM LỆ, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521049', N'Nguyễn Thị Yến', N'44K05', CAST(N'2000-12-01' AS Date), N'Nữ', N'CỔ BƯU, HƯƠNG AN, HƯƠNG TRÀ, TT HUẾ')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521050', N'Hồ Thị Mỹ Hiền', N'44K05', CAST(N'2000-01-13' AS Date), N'Nữ', N'196/9 NGUYỄN CÔNG TRỨ, SƠN TRÀ, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521051', N'Lê Minh Thư', N'44K05', CAST(N'2000-08-21' AS Date), N'Nữ', N'1146 TRƯỜNG CHINH, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521052', N'Nguyễn Hải Đăng', N'44K05', CAST(N'2000-04-22' AS Date), N'Nam', N'THÁI THANH HIỀN, THÔN LONG QUANG, XÃ TRIỆU TRẠCH, TRIỆU PHONG, QUẢNG TRỊ')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521053', N'Lê Vũ Hạnh Dung', N'44K05', CAST(N'2000-07-24' AS Date), N'Nữ', N'K353/50 CÁCH MẠNG THÁNG TÁM, CẨM LỆ, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521054', N'Nguyễn Hải Linh', N'44K05', CAST(N'2000-06-25' AS Date), N'Nữ', N'TDP3-P TỨ HẠ, HƯƠNG TRÀ, TT HUẾ')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521055', N'Võ Thị Mỹ Linh', N'44K05', CAST(N'2000-08-24' AS Date), N'Nữ', N'67 Trần Văn Dư, Mỹ An, Ngũ Hành Sơn Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521056', N'Nguyễn Hồng Minh', N'44K05', CAST(N'2000-10-20' AS Date), N'Nam', N'tổ 4,Bình Lãnh,Thăng Bình')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521057', N'Hồ Thị Lệ Quỳnh', N'44K05', CAST(N'2000-10-22' AS Date), N'Nữ', N'thôn Thanh Tân - Phong Sơn - Phong Điền - TT. Huế')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521058', N'Huỳnh Đình Sang', N'44K05', CAST(N'2000-07-23' AS Date), N'Nam', N'Gò Chu, Sơn Thành, Sơn Hà, Quãng Ngãi')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521059', N'Tạ Thái Sơn', N'44K05', CAST(N'2000-09-23' AS Date), N'Nam', N'Tổ 6, Hà Lam, Thăng Bình, QUảng Nam')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521060', N'Lê Trần Bích Hiền', N'44K05', CAST(N'2000-12-03' AS Date), N'Nữ', N'K387/36 LÊ DUẨN, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521061', N'Hồ Thị Linh', N'44K05', CAST(N'2000-03-20' AS Date), N'Nữ', N'số nhà 40, tổ Quyết Tiến,  phường Dileya, Krong Năng, tỉnh Đăk lăk')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521062', N'Lê Thị Na', N'44K05', CAST(N'2000-05-09' AS Date), N'Nữ', N'Vĩnh Trà Bình Thạnh Bình Sơn Quảng Ngãi')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521063', N'Lê Thị Nga', N'44K05', CAST(N'2000-12-07' AS Date), N'Nữ', N'THÔN PHÚ BÌNH 2, XÃ CAM TÂN, HUYỆN CAM LÂM , TỈNH KHÁNH HÒA')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521064', N'Võ Thị Cẩm Giang', N'44K05', CAST(N'2000-11-12' AS Date), N'Nữ', N'Thôn 10 Bình Nguyên, Thăng Bình, Quảng Nam')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521065', N'Thái Văn Hiếu', N'44K05', CAST(N'2000-10-11' AS Date), N'Nam', N'76 HỒ HUÂN NGHIỆP, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521066', N'Nguyễn Đăng Huy', N'44K05', CAST(N'2000-10-23' AS Date), N'Nam', N'15 NGUYỄN BỈNH KHIÊM, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521067', N'Phạm Thị Mỹ', N'44K05', CAST(N'2000-11-24' AS Date), N'Nữ', N'TỔ DÂN PHỐ 10, CHƯ SÊ, GIA LAI')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521068', N'Nguyễn Thị Luy Na', N'44K05', CAST(N'2000-05-21' AS Date), N'Nữ', N'TỔ 5, THÔN HƯƠNG QUẾ ĐÔNG, QUẾ PHÚ, QUẾ SƠN, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521069', N'Phạm Thị Tùng Quyên', N'44K05', CAST(N'2000-11-04' AS Date), N'Nữ', N'57/8 Trần Quốc Toản Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521070', N'Trịnh Duy Trung', N'44K05', CAST(N'2000-12-29' AS Date), N'Nam', N'TỔ 12, THÔN HÒA VANG, XÃ LỘC BỔN, HUYỆN PHÚ LỘC, TỈNH TT. HUẾ')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521071', N'Nguyễn Thị Thúy An', N'44K08', CAST(N'2000-10-08' AS Date), N'Nữ', N'159/18 Trần Thái Tông, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521072', N'Nguyễn Hải Đăng', N'44K08', CAST(N'2000-05-02' AS Date), N'Nam', N'thôn Nhị Dinh I, XÃ ĐIỆN PHƯỚC, ĐIỆN BÀN, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521073', N'Tạ Minh Đức', N'44K08', CAST(N'2000-10-21' AS Date), N'Nam', N'KP HƯƠNG TRUNG, P. HÒA HƯƠNG, TP TAM KỲ, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521074', N'Nguyễn Văn Dương', N'44K08', CAST(N'2000-11-21' AS Date), N'Nam', N'54 TRƯƠNG CHÍ CƯƠNG, HÒA CƯỜNG NAM, TP. ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521075', N'Nguyễn Thị Thúy Hậu', N'44K08', CAST(N'2000-11-11' AS Date), N'Nữ', N'119 Trần Xuân Lê, Thanh Khê, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521076', N'Lê Đình Hưng', N'44K08', CAST(N'2000-02-20' AS Date), N'Nam', N'18 Nguyễn Duy Hiệu, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521077', N'Nguyễn Đình Khảm', N'44K08', CAST(N'2000-02-02' AS Date), N'Nam', N'TDP 2, THỊ TRẤN PHÚ THUẬN, HUYỆN PHÚ THUẬN, TỈNH GIA LAI')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521078', N'Nguyễn Thị Bích Lành', N'44K08', CAST(N'2000-03-03' AS Date), N'Nữ', N'41 ĐỖ QUANG, LÃNH THƯỢNG 2, ĐÔNG PHÚ, QUẾ SƠN, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521079', N'Nguyễn Ngọc Thảo Linh', N'44K08', CAST(N'2000-08-03' AS Date), N'Nữ', N'320 NGŨ HÀNH SƠN, TP. ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521080', N'Trần Thị Mến', N'44K08', CAST(N'2000-05-20' AS Date), N'Nữ', N'718/14 TRẦN CAO VÂN, THANH KHÊ, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521081', N'Mai Thị Tường Vi', N'44K08', CAST(N'2000-05-01' AS Date), N'Nữ', N'K10 H23/4 PHẠM VĂN NGHỊ, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521082', N'Trần Thị Dung', N'44K08', CAST(N'2000-05-11' AS Date), N'Nữ', N'313 HÙNG VƯƠNG, TAM KỲ, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521083', N'Nguyễn Tất Phú', N'44K08', CAST(N'2000-04-10' AS Date), N'Nam', N'K202H19/17 Hoàng Văn Thái, Hòa Khánh Nam, Liên Chiểu, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521084', N'Trịnh Thị Vân', N'44K08', CAST(N'2000-04-21' AS Date), N'Nữ', N'SỐ 8, đường số 1 thôn Thạnh mỹ, xã Điện Quang, Điện Bàn, Quảng Nam')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521085', N'Lê Bảo Ngọc', N'44K08', CAST(N'2000-06-23' AS Date), N'Nữ', N'K74/18 TRẦN CAO VÂN, QUẬN THANH KHÊ, THÀNH PHỐ ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521086', N'Đoàn Duy Dương', N'44K08', CAST(N'2000-05-20' AS Date), N'Nam', N'25 ĐỖ NHUẬN, LIÊN CHIỂU, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521087', N'Bùi Thị Duy Sa', N'44K08', CAST(N'2000-03-24' AS Date), N'Nữ', N'157 HOÀNG VĂN THÁI, TỔ 134 HÒA KHÁNH NAM, LIÊN CHIỂU, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521088', N'Lê Thị Hồng Ngọc', N'44K08', CAST(N'2000-02-26' AS Date), N'Nữ', N'100 DUY TÂN TỔ 3, P. DIÊN HỒNG, TP. PLEIKU, GIA LAI')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521089', N'Lưu Mỹ Quyên', N'44K08', CAST(N'2000-05-25' AS Date), N'Nữ', N'K218/04 HOÀNG VĂN THÁI, LIÊN CHIỂU, TP. ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521090', N'Nguyễn Phước Nhật Hưng', N'44K08', CAST(N'2000-12-22' AS Date), N'Nam', N'K338/60 HOÀNG DiỆU, HẢI CHÂU, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521091', N'Trần Thị Khánh Vân', N'44K08', CAST(N'2000-12-22' AS Date), N'Nữ', N'Tổ 9 Vĩnh Ninh Huế')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521092', N'Nguyễn Thị Thu Phương', N'44K08', CAST(N'2000-12-22' AS Date), N'Nam', N'số 20 Đường Võ Quảng, Nghệ An')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521093', N'Cao Thùy Vy', N'44K08', CAST(N'2000-12-22' AS Date), N'Nữ', N'04 Hòa Thọ Đông, Cẩm Lệ, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521094', N'Tôn Nữ Thiện Như', N'44K08', CAST(N'2000-12-22' AS Date), N'Nữ', N'Tổ 4, An Cựu, TP Huế')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521095', N'Nguyễn Phước Nhật Hưng', N'44K08', CAST(N'2000-12-22' AS Date), N'Nam', N'')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521096', N'Nguyễn Thanh Huyền', N'44K08', CAST(N'2000-05-22' AS Date), N'Nữ', N'04 Mai Hiến, Thanh hóa')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521097', N'Huỳnh Nguyễn Mai Vân', N'44K08', CAST(N'2000-12-04' AS Date), N'Nữ', N'03 Liêm lạc 15, Hòa xuân, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521098', N'Trần Văn Hưng', N'44K08', CAST(N'2000-04-02' AS Date), N'Nam', N'K338/60 HOÀNG DiỆU, QUẢNG BÌNH')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521099', N'Nguyễn Mai Chi', N'44K08', CAST(N'2000-11-12' AS Date), N'Nữ', N'38 Trường Chinh, HẢI CHÂU, ĐÀ NẴNG')
GO
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521100', N'Nguyễn Hiệp Lộc', N'44K08', CAST(N'2000-10-11' AS Date), N'Nam', N'91 NGÔ TẤT TỐ, TP ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521101', N'Đặng Thị Phương Thảo', N'44K08', CAST(N'2000-12-11' AS Date), N'Nữ', N'122 TRẦN CAO VÂN, HỘI AN, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521102', N'Hoàng Thị Hội', N'44K08', CAST(N'2000-12-20' AS Date), N'Nữ', N'71 LÊ VĂN HIẾN, PHƯỜNG KHUÊ MỸ, NGŨ HÀNH SƠN, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521103', N'Bùi Kiều Oanh', N'44K08', CAST(N'2000-02-10' AS Date), N'Nữ', N'Tây Giang, Bình Sa, Thăng Bình, Quảng Nam')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521104', N'Nguyễn Anh Quốc Huy', N'44K08', CAST(N'2000-11-01' AS Date), N'Nam', N'14 Nguyễn Tri Phương, TT Lao Bảo, Hướng Hóa, Quảng Trị')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521105', N'Nguyễn Công Minh', N'44K08', CAST(N'2000-12-01' AS Date), N'Nam', N'66 Bàu Làng, Q. Thanh Khê, TP Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521106', N'Nguyễn Đức Minh Quang', N'44K08', CAST(N'2000-12-20' AS Date), N'Nam', N'Hương An, Quế Sơn, Quảng Nam')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521107', N'Hồ Đăng Hương Trà', N'44K08', CAST(N'2000-09-04' AS Date), N'Nữ', N'29 Trần hưng đạo, đaknong')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521108', N'Nguyễn Thế Anh', N'44K08', CAST(N'2000-03-04' AS Date), N'Nam', N'Lăng Cô, Phú Lộc, Thừa Thiên Huế')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521109', N'Huỳnh Thị Diễm', N'44K08', CAST(N'2000-02-23' AS Date), N'Nữ', N'Hòa Bình, Thạch Đồng, Hà Tĩnh')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521110', N'Trần Viết Hải', N'44K08', CAST(N'2000-06-21' AS Date), N'Nam', N'THÔN DÙI CHƯƠNG 1, XÃ PHƯỚC NINH, HUYỆN NÔNG SƠN, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521111', N'Đoàn Minh Hiếu', N'44K08', CAST(N'2000-04-06' AS Date), N'Nam', N'177 CẦN GIUỘC, PHƯỜNG AN KHÊ, THANH KHÊ, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521112', N'Đinh Văn Hoàng', N'44K08', CAST(N'2000-05-05' AS Date), N'Nam', N'604 ÔNG ÍCH KHIÊM, HẢI CHÂU, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521113', N'Phạm Bá Huy', N'44K08', CAST(N'2000-10-02' AS Date), N'Nam', N'K134/3 NGUYỄN NHƯ HẠNH, LIÊN CHIỂU, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521114', N'Hồ Tăng Nhật Nam', N'44K08', CAST(N'2000-05-10' AS Date), N'Nam', N'27/8 LÊ THÀNH PHƯƠNG, PHƯỜNG 8, TP TUY HÒA, PHÚ YÊN')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521115', N'Phan Thị Xuân Phương', N'44K08', CAST(N'2000-08-11' AS Date), N'Nữ', N'THÔN 8, TIÊN MỸ, TIÊN PHƯỚC, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521116', N'Trần Thị Mỹ Lệ Uyên', N'44K08', CAST(N'2000-09-20' AS Date), N'Nữ', N'THÔN 4, XÃ NGHĨA NINH, THÀNH PHỐ ĐỒNG HỚI, TỈNH QUẢNG BÌNH')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521117', N'Đinh Thị Thêm', N'44K08', CAST(N'2000-06-27' AS Date), N'Nữ', N'15 LÊ LAI, MỸ THẠCH I, THỊ TRẤN CHƯ SÊ, HUYỆN CHƯ SÊ, TỈNH GIA LAI')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521118', N'Nguyễn Quốc Tùng', N'44K08', CAST(N'2000-08-22' AS Date), N'Nam', N'352 TRẦN HƯNG ĐẠO, THỊ XÃ QUẢNG TRỊ, QUẢNG TRỊ')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521119', N'Nguyễn Thị Tường Vy', N'44K08', CAST(N'2000-07-11' AS Date), N'Nữ', N'118 TIỂU LA, HẢI CHÂU, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521120', N'Trương Mẫn Vy', N'44K08', CAST(N'2000-07-21' AS Date), N'Nữ', N'Xuyên Đức, Đức Xuyên, Krong Nô, DakNong')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521121', N'Nguyễn Nho Khải', N'44K09', CAST(N'2000-01-07' AS Date), N'Nam', N'25 Võ Thị Sáu, Nhơn Bình, Quy Nhơn, Bình Định')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521122', N'Nguyễn Thị Ngọc Lan', N'44K09', CAST(N'2000-06-07' AS Date), N'Nữ', N'TDP 2, THỊ TRẤN PHÚ THUẬN, HUYỆN PHÚ THUẬN, TỈNH GIA LAI')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521123', N'Nguyễn Thị Thùy', N'44K09', CAST(N'2000-05-07' AS Date), N'Nữ', N'18/121 NGÔ ĐỨC KẾ - THUẬN LỘC - TP HUẾ')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521124', N'Nguyễn Bảo Toàn', N'44K09', CAST(N'2000-02-04' AS Date), N'Nam', N'41 ĐỖ QUANG, LÃNH THƯỢNG 2, ĐÔNG PHÚ, QUẾ SƠN, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521125', N'Ngô Trần Thoại Vy', N'44K09', CAST(N'2000-02-04' AS Date), N'Nữ', N'320 NGŨ HÀNH SƠN, TP. ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521126', N'Nguyễn Phạm Kiều Oanh', N'44K09', CAST(N'2000-07-20' AS Date), N'Nữ', N'718/14 TRẦN CAO VÂN, THANH KHÊ, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521127', N'Nguyễn Thị Hòa Tú', N'44K09', CAST(N'2000-11-04' AS Date), N'Nữ', N'K10 H23/4 PHẠM VĂN NGHỊ, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521128', N'Huỳnh Ngọc Danh', N'44K09', CAST(N'2000-12-07' AS Date), N'Nam', N'313 HÙNG VƯƠNG, TAM KỲ, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521129', N'Phạm Văn Đức', N'44K09', CAST(N'2000-04-24' AS Date), N'Nam', N'K202H19/17 Hoàng Văn Thái, Hòa Khánh Nam, Liên Chiểu, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521130', N'Nguyễn Thị Thục Quyên', N'44K09', CAST(N'2000-05-25' AS Date), N'Nữ', N'TÂN MỸ, CẨM AN, HỌI AN, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521131', N'Trịnh Ngọc Sơn', N'44K09', CAST(N'2000-07-27' AS Date), N'Nam', N'Thôn lạc Thành Nam, Điện Hồng, Điện Bàn, Quảng Nam')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521132', N'Trần Ngọc Trâm', N'44K09', CAST(N'2000-09-03' AS Date), N'Nữ', N'244 Cù Chính Lan, Tổ 1')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521133', N'Trần Văn Hân', N'44K09', CAST(N'2000-08-03' AS Date), N'Nam', N'Vạn Tường, Bình Hải, Bình Sơn, Quảng Ngãi')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521134', N'Lê Xuân Đức', N'44K09', CAST(N'2000-08-23' AS Date), N'Nam', N'30 Bàu Tró, Hải Thành, Đồng Hới, QUảng Bình')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521135', N'Trần Thị Khánh Hà', N'44K09', CAST(N'2000-03-23' AS Date), N'Nữ', N'Tổ 12 Hòa Minh Liên Chiểu Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521136', N'Phạm Lê Anh Trúc', N'44K09', CAST(N'2000-09-23' AS Date), N'Nam', N'207/9 QuỐC LỘ 9, ĐÔNG HÀ, QuẢNG TRỊ')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521137', N'Nguyễn Hoàng Đô', N'44K09', CAST(N'2000-07-07' AS Date), N'Nam', N'K37/4 HẢI HỒ, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521138', N'Lê Ngọc Hải Hà', N'44K09', CAST(N'2000-07-03' AS Date), N'Nữ', N'THANH HÀ, HỘI AN, QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521139', N'Phan Lê Bảo Ngọc', N'44K09', CAST(N'2000-05-28' AS Date), N'Nữ', N'MỸ CHÁNH, HẢI CHÁNH, HẢI LĂNG, QUẢNG TRỊ')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521140', N'Nguyễn Thị Phương Thảo', N'44K09', CAST(N'2000-06-27' AS Date), N'Nữ', N'244 TÔN ĐỨC THẮNG, LIÊN CHIỂU, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521141', N'Nguyễn Lệ Thu', N'44K09', CAST(N'2000-05-28' AS Date), N'Nữ', N'TRẦN ĐÌNH TRÍ, ĐỘI 2, THÔN PHAN XÁ, XUÂN THỦY, LỆ THỦY, QUẢNG BÌNH')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521142', N'Nguyễn Thị Hồng Chinh', N'44K09', CAST(N'2000-03-28' AS Date), N'Nữ', N'402/75 TRƯỜNG CHINH, CẨM LỆ, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521143', N'Lê Phước Đức', N'44K09', CAST(N'2000-05-23' AS Date), N'Nam', N'XÓM 2, THU XÀ, NGHĨA HÒA, TƯ NGHĨA, QUẢNG NGÃI')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521144', N'Lê Thị Mỹ Duyên', N'44K09', CAST(N'2000-08-22' AS Date), N'Nữ', N'K925/19 NGÔ QUYỀN, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521145', N'Nguyễn Thị Thùy Duyên', N'44K09', CAST(N'2000-06-08' AS Date), N'Nữ', N'K53 H18/23 HUỲNH NGỌC HUỆ, THANH KHÊ, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521146', N'Võ Thị Hương Giang', N'44K09', CAST(N'2000-03-06' AS Date), N'Nữ', N'XÓM 5, THÔN ĐÔNG QUANG, XÃ PHỔ VĂN, ĐỨC PHỔ, QUẢNG NGÃI')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521147', N'Hoàng Thanh Lan', N'44K09', CAST(N'2000-12-06' AS Date), N'Nữ', N'SỐ 34  ĐƯỜNG NGUYỄN ĐÌNH TỰU, TT TIÊN KÌ, HUYỆN TIÊN PHƯỚC, TỈNH QUẢNG NAM')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521148', N'Nghiêm Thị Thùy Linh', N'44K09', CAST(N'2000-12-03' AS Date), N'Nữ', N'Kiệt 38 Tôn Thất Sơn, Thủy Phương, Hương Thủy, TP Huế')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521149', N'Trần Công Sơn', N'44K09', CAST(N'2000-12-01' AS Date), N'Nam', N'Tổ 37B Khu Vực 4, Số Nhà 20/6A Chi Lăng, Quy Nhơn, Bình Định')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521150', N'Lê Thị Thảo', N'44K09', CAST(N'2000-11-20' AS Date), N'Nữ', N'55 Nguyễn Quyền, Hòa An, Quận Cẩm Lệ, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521151', N'Nguyễn Thị Thương', N'44K09', CAST(N'2000-11-02' AS Date), N'Nữ', N'Liêm Lạc 15, Hòa Xuân, Cẩm lệ, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521152', N'Võ Thị Thu Thúy', N'44K09', CAST(N'2000-12-24' AS Date), N'Nữ', N'TỔ 45 ĐA PHƯỚC II, HÒA KHÁNH BẮC, LIÊN CHIỂU, ĐÀ NẴNG')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521153', N'Nguyễn Thị Thu Thủy', N'44K09', CAST(N'2000-04-21' AS Date), N'Nữ', N'5 HÙNG VƯƠNG, TX BA ĐỒN,K218 Nguyễn Duy Hạnh')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521154', N'Nguyễn Đức Như Ý', N'44K09', CAST(N'2000-02-26' AS Date), N'Nữ', N'Nguyễn Tri Phương, Quận Thanh Khê, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521155', N'Huỳnh Thị Trường Oanh', N'44K09', CAST(N'2000-02-25' AS Date), N'Nữ', N'22 Nguyễn Tri Phương, TT Lao Bảo, Hướng Hóa, Quảng Trị')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521156', N'Nguyễn Xuân Đức', N'44K09', CAST(N'2000-06-25' AS Date), N'Nam', N'08 Lê Lợi, Thị xã Ba Đồn, Quảng Bình')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521157', N'Nguyễn Quốc Việt', N'44K09', CAST(N'2000-07-22' AS Date), N'Nam', N'TỔ DÂN PHỐ 5,P NAM LÝ, TP ĐỒNG HỚI, QUẢNG BÌNH')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521158', N'Trần Thị Ngọc Trân', N'44K09', CAST(N'2000-08-03' AS Date), N'Nữ', N'Tổ 37A Khu Vực 9, Số Nhà 20 Chi Lăng, Quy Nhơn, Bình Định')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521159', N'Hoàng Ry An', N'44K09', CAST(N'2000-07-08' AS Date), N'Nữ', N'21 VÕ VĂN KIỆT, PHƯỜNG THANH XUÂN, TP BUÔN MA THUỘT, ĐĂK LĂK')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521160', N'Nguyễn Thị Thu Hiền', N'44K17', CAST(N'2000-06-04' AS Date), N'Nữ', N'66 ANH HÙNG NÚP, TỔ 7,  KÔNG CHRO, GIA LAI')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521161', N'Nguyễn Anh Khoa', N'44K17', CAST(N'2000-05-05' AS Date), N'Nam', N'10 DUY TÂN TỔ 3, P. DIÊN HỒNG, TP. PLEIKU, GIA LAI')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521162', N'Nguyễn Nhật Lam', N'44K17', CAST(N'2000-04-04' AS Date), N'Nữ', N'THỊ TRẤN PHÚ THUẬN, HUYỆN PHÚ THUẬN, TỈNH GIA LAI')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521163', N'Nguyễn Thị Việt Phương', N'44K17', CAST(N'2000-02-02' AS Date), N'Nữ', N'4 An Cựu, Thành phố Huế')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521164', N'Hoàng Lê Hồng Sơn', N'44K17', CAST(N'2000-04-04' AS Date), N'Nam', N'5 Nguyễn Văn Linh,Quận Thanh Khê, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521165', N'Nguyễn Cao Thành Tâm', N'44K17', CAST(N'2000-07-07' AS Date), N'Nam', N'22 Nguyễn Tri Phương, Quận Thanh Khê, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521166', N'Huỳnh Nguyễn Minh Tú', N'44K17', CAST(N'2000-12-05' AS Date), N'Nữ', N'08 Hùng Vương, Thị xã Ba Đồn, Quảng Bình')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521167', N'Huỳnh Thị Kim Ngân', N'44K17', CAST(N'2000-11-29' AS Date), N'Nữ', N'K90 Nguyễn Lương Bằng, Quận Liêu Chiểu, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521168', N'Nguyễn Thị Ngân', N'44K17', CAST(N'2000-11-03' AS Date), N'Nữ', N'34 Nguyễn Quyền, Quận Cẩm Lệ, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521169', N'Đinh Yến Ngân', N'44K17', CAST(N'2000-12-03' AS Date), N'Nữ', N'125 Ngô Quyền, Mân Thái, Quận Sơn Trà, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521170', N'Nguyễn Hoàng Nhân', N'44K17', CAST(N'2000-11-09' AS Date), N'Nam', N'56 Đặng Dung, Hòa Khánh Bắc, Quận Liên Chiểu, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521171', N'Võ Nguyễn Diệu Tuyền', N'44K17', CAST(N'2000-08-27' AS Date), N'Nữ', N'30 Nguyễn Hữu Thọ, Hòa Thuận Tây, Quận Hải Châu, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521172', N'Trương Thị Thùy Vân', N'44K17', CAST(N'2000-05-28' AS Date), N'Nữ', N'70 Phan Thanh, Thanh Khê, Quận Thanh Khê, Đà Nẵn')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521173', N'Trần Huy Vũ', N'44K17', CAST(N'2000-03-28' AS Date), N'Nam', N'40 Nguyễn Huy Tưởng, Hòa Minh, Quận Liên Chiểu, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521174', N'Nguyễn Quốc Huy', N'44K17', CAST(N'2000-06-27' AS Date), N'Nam', N'40 Hoàng Văn Thái, Hòa Minh, Quận Liên Chiểu, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521175', N'Nguyễn Hữu Thiện', N'44K17', CAST(N'2000-02-26' AS Date), N'Nam', N'200 Lê Đình Lý, Hòa Thuận Tây, Quận Hải Châu, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521176', N'Thái Thị Phương Anh', N'44K17', CAST(N'2000-05-29' AS Date), N'Nữ', N'67 Bùi Thị Xuân, An Hải, An Hải Tây, Quận Sơn Trà, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521177', N'Phan Thị Thu Hoài', N'44K17', CAST(N'2000-02-04' AS Date), N'Nữ', N'567 Nguyễn Tất Thành, Quận Thanh Khê, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521178', N'Võ Đức Từ Huy', N'44K17', CAST(N'2000-07-27' AS Date), N'Nam', N'457 Điện Biên Phủ, Hòa Khê, Quận Thanh Khê, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521179', N'Đoàn Thị Ngọc Huyền', N'44K17', CAST(N'2000-08-25' AS Date), N'Nữ', N'34 Nguyễn Quyền, Hòa An, Quận Cẩm Lệ, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521180', N'Đoàn Thị Khánh', N'44K17', CAST(N'2000-12-26' AS Date), N'Nữ', N'129 Phạm Như Xương, Hòa Khánh Nam, Quận Liên Chiểu, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521181', N'Võ Văn Anh Kiệt', N'44K17', CAST(N'2000-11-23' AS Date), N'Nam', N'56 Nguyễn Tri Phương, Thanh Khê, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521182', N'Nguyễn Tri Minh', N'44K17', CAST(N'2000-12-25' AS Date), N'Nam', N'tổ 27a, Nại Hiên Đông, Quận Sơn Trà, TP. Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521183', N'Lê Đình Nam', N'44K17', CAST(N'2000-03-12' AS Date), N'Nam', N'Thôn Thanh Quýt 1, Điện Thắng Trung, Điện Bàn, Quảng Nam')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521184', N'Chu Thị Hương Quỳnh', N'44K17', CAST(N'2000-01-23' AS Date), N'Nữ', N'412 Cách Mạng Tháng 8, Quận Cẩm Lệ, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521185', N'Phạm Thị Quỳnh Trang', N'44K17', CAST(N'2000-09-24' AS Date), N'Nữ', N'Tổ 37B Khu Vực 4, Số Nhà 20/6A Chi Lăng, Quy Nhơn, Bình Định')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521186', N'Trần Xuân Tuấn', N'44K17', CAST(N'2000-06-24' AS Date), N'Nam', N'Kiệt 38 Tôn Thất Sơn, Thủy Phương, Hương Thủy, TP Huế')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521187', N'Nguyễn Ngọc Anh Thi', N'44K17', CAST(N'2000-04-12' AS Date), N'Nam', N'45 Ngô Thì Nhậm, Hòa Khánh Bắc, Quận Liên Chiểu, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521188', N'Đoàn Thị Hằng', N'44K17', CAST(N'2000-03-14' AS Date), N'Nữ', N'58 Hùng Vương, Thị xã Ba Đồn, Quảng Bình')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521189', N'Lê Thị Thu Hường', N'44K17', CAST(N'2000-11-14' AS Date), N'Nữ', N'90 Nguyễn Thức Tự, Hòa Quý, Quận Ngũ Hành Sơn, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521190', N'Phùng Kim Khánh', N'44K17', CAST(N'2000-05-15' AS Date), N'Nữ', N'595 Trần Thủ Độ, Điện Nam Trung, Điện Bàn, Quảng Nam')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521191', N'Lê Thị Oanh', N'44K18.2', CAST(N'2000-08-16' AS Date), N'Nữ', N'90 Nguyễn Thức Tự, Hòa Quý, Quận Ngũ Hành Sơn, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521192', N'Ngô Tấn Phú', N'44K18.2', CAST(N'2000-04-19' AS Date), N'Nam', N'45 Hải Triều, An Cựu, Thành phố Huế')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521193', N'Hà Thị Bích Thùy', N'44K18.2', CAST(N'2000-03-19' AS Date), N'Nữ', N'45 Nguyễn Văn Linh,Quận Thanh Khê, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521194', N'Nguyễn Thị Kim Tiến', N'44K18.2', CAST(N'2000-03-11' AS Date), N'Nữ', N'75 Bà Triệu, Phú Hội, Thành phố Huế')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521195', N'Trần Thị Minh Ty', N'44K18.2', CAST(N'2000-08-15' AS Date), N'Nữ', N'90 Nguyễn Thức Tự, Hòa Quý, Quận Ngũ Hành Sơn, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521196', N'Hoàng Tiến Lực', N'44K18.2', CAST(N'2000-05-16' AS Date), N'Nam', N'595 Trần Thủ Độ, Điện Nam Trung, Điện Bàn, Quảng Nam')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521197', N'Võ Thị Thùy Như', N'44K18.2', CAST(N'2000-05-17' AS Date), N'Nữ', N'566 Núi Thành, Phường Hòa Cường Nam, Quận Hải Châu, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521198', N'Nguyễn Thị Thanh Thủy', N'44K18.2', CAST(N'2000-05-17' AS Date), N'Nữ', N'149 Phan Đăng Lưu, Quận Hải Châu, Đà Nẵng')
INSERT [dbo].[SINHVIEN] ([MaSV], [HoTenSV], [Lop], [NgaySinhSV], [GioiTinhSV], [DiaChiSV]) VALUES (N'181121521199', N'Dương Quang Thắng', N'44K18.2', CAST(N'2000-01-18' AS Date), N'Nam', N'31 Phan Thanh, Quận Thanh Khê, Đà Nẵng')
GO
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000001', N'181121521000', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000002', N'181121521001', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000003', N'181121521002', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000004', N'181121521003', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000005', N'181121521004', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000006', N'181121521005', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000007', N'181121521006', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000008', N'181121521007', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000009', N'181121521008', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000010', N'181121521009', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000011', N'181121521010', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000012', N'181121521011', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000013', N'181121521012', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000014', N'181121521013', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000015', N'181121521014', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000016', N'181121521015', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000017', N'181121521016', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000018', N'181121521017', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000019', N'181121521018', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000020', N'181121521019', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000021', N'181121521020', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000022', N'181121521021', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000023', N'181121521022', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000024', N'181121521023', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000025', N'181121521024', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000026', N'181121521025', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000027', N'181121521026', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000028', N'181121521027', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000029', N'181121521028', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000030', N'181121521029', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000031', N'181121521030', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000032', N'181121521031', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000033', N'181121521032', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000034', N'181121521033', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000035', N'181121521034', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000036', N'181121521035', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000037', N'181121521036', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000038', N'181121521037', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000039', N'181121521038', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000040', N'181121521039', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000041', N'181121521040', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000042', N'181121521041', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000043', N'181121521042', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000044', N'181121521043', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000045', N'181121521044', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000046', N'181121521045', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000047', N'181121521046', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000048', N'181121521047', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000049', N'181121521048', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000050', N'181121521049', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000051', N'181121521050', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000052', N'181121521051', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000053', N'181121521052', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000054', N'181121521053', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000055', N'181121521054', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000056', N'181121521055', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000057', N'181121521056', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000058', N'181121521057', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000059', N'181121521058', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000060', N'181121521059', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000061', N'181121521060', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000062', N'181121521061', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000063', N'181121521062', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000064', N'181121521063', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000065', N'181121521064', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000066', N'181121521065', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000067', N'181121521066', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000068', N'181121521067', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000069', N'181121521068', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000070', N'181121521069', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000071', N'181121521070', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000072', N'181121521071', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000073', N'181121521072', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000074', N'181121521073', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000075', N'181121521074', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000076', N'181121521075', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000077', N'181121521076', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000078', N'181121521077', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000079', N'181121521078', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000080', N'181121521079', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000081', N'181121521080', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000082', N'181121521081', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000083', N'181121521082', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000084', N'181121521083', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000085', N'181121521084', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000086', N'181121521085', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000087', N'181121521086', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000088', N'181121521087', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000089', N'181121521088', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000090', N'181121521089', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000091', N'181121521090', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000092', N'181121521091', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000093', N'181121521092', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000094', N'181121521093', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000095', N'181121521094', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000096', N'181121521095', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000097', N'181121521096', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000098', N'181121521097', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000099', N'181121521098', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000100', N'181121521099', N'123456')
GO
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000101', N'181121521100', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000102', N'181121521101', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000103', N'181121521102', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000104', N'181121521103', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000105', N'181121521104', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000106', N'181121521105', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000107', N'181121521106', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000108', N'181121521107', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000109', N'181121521108', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000110', N'181121521109', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000111', N'181121521110', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000112', N'181121521111', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000113', N'181121521112', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000114', N'181121521113', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000115', N'181121521114', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000116', N'181121521115', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000117', N'181121521116', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000118', N'181121521117', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000119', N'181121521118', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000120', N'181121521119', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000121', N'181121521120', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000122', N'181121521121', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000123', N'181121521122', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000124', N'181121521123', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000125', N'181121521124', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000126', N'181121521125', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000127', N'181121521126', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000128', N'181121521127', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000129', N'181121521128', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000130', N'181121521129', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000131', N'181121521130', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000132', N'181121521131', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000133', N'181121521132', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000134', N'181121521133', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000135', N'181121521134', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000136', N'181121521135', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000137', N'181121521136', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000138', N'181121521137', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000139', N'181121521138', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000140', N'181121521139', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000141', N'181121521140', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000142', N'181121521141', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000143', N'181121521142', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000144', N'181121521143', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000145', N'181121521144', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000146', N'181121521145', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000147', N'181121521146', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000148', N'181121521147', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000149', N'181121521148', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000150', N'181121521149', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000151', N'181121521150', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000152', N'181121521151', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000153', N'181121521152', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000154', N'181121521153', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000155', N'181121521154', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000156', N'181121521155', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000157', N'181121521156', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000158', N'181121521157', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000159', N'181121521158', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000160', N'181121521159', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000161', N'181121521160', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000162', N'181121521161', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000163', N'181121521162', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000164', N'181121521163', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000165', N'181121521164', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000166', N'181121521165', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000167', N'181121521166', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000168', N'181121521167', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000169', N'181121521168', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000170', N'181121521169', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000171', N'181121521170', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000172', N'181121521171', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000173', N'181121521172', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000174', N'181121521173', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000175', N'181121521174', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000176', N'181121521175', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000177', N'181121521176', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000178', N'181121521177', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000179', N'181121521178', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000180', N'181121521179', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000181', N'181121521180', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000182', N'181121521181', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000183', N'181121521182', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000184', N'181121521183', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000185', N'181121521184', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000186', N'181121521185', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000187', N'181121521186', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000188', N'181121521187', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000189', N'181121521188', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000190', N'181121521189', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000191', N'181121521190', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000192', N'181121521191', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000193', N'181121521192', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000194', N'181121521193', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000195', N'181121521194', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000196', N'181121521195', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000197', N'181121521196', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000198', N'181121521197', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000199', N'181121521198', N'123456')
INSERT [dbo].[TAIKHOANSV] ([MaTKSV], [MaSV], [MatKhauSV]) VALUES (N'TK000200', N'181121521199', N'123456')
GO
INSERT [dbo].[TAIKHOANTT] ([MaTKTT], [MaTT], [MatKhauTT]) VALUES (N'TKTT0001', N'TT000001', N'11111111')
INSERT [dbo].[TAIKHOANTT] ([MaTKTT], [MaTT], [MatKhauTT]) VALUES (N'TKTT0002', N'TT000002', N'11111111')
INSERT [dbo].[TAIKHOANTT] ([MaTKTT], [MaTT], [MatKhauTT]) VALUES (N'TKTT0003', N'TT000003', N'11111111')
INSERT [dbo].[TAIKHOANTT] ([MaTKTT], [MaTT], [MatKhauTT]) VALUES (N'TKTT0004', N'TT000004', N'11111111')
INSERT [dbo].[TAIKHOANTT] ([MaTKTT], [MaTT], [MatKhauTT]) VALUES (N'TKTT0005', N'TT000005', N'11111111')
GO
INSERT [dbo].[THUTHU] ([MaTT], [HoVaTenTT], [NgaySinhTT], [GioiTinhTT], [DiaChiTT]) VALUES (N'TT000001', N'Hà Huỳnh Anh', CAST(N'1995-10-20' AS Date), N'Nam', N'25 Nguyễn Công Trứ, Sơn Trà, Đà Nẵng')
INSERT [dbo].[THUTHU] ([MaTT], [HoVaTenTT], [NgaySinhTT], [GioiTinhTT], [DiaChiTT]) VALUES (N'TT000002', N'Trần Minh Nguyệt', CAST(N'1989-06-14' AS Date), N'Nữ', N'106 Chu Huy Mân, Sơn Trà, Đà Nẵng')
INSERT [dbo].[THUTHU] ([MaTT], [HoVaTenTT], [NgaySinhTT], [GioiTinhTT], [DiaChiTT]) VALUES (N'TT000003', N'Lê Thị Ánh Hồng', CAST(N'1992-05-09' AS Date), N'Nữ', N'07 Mỹ An, Ngũ Hành Sơn, Đà Nẵng')
INSERT [dbo].[THUTHU] ([MaTT], [HoVaTenTT], [NgaySinhTT], [GioiTinhTT], [DiaChiTT]) VALUES (N'TT000004', N'Bùi Nguyễn Yến Lê', CAST(N'1984-12-20' AS Date), N'Nữ', N'156 Bùi Tá Hán, Ngũ Hành Sơn, Đà Nẵng')
INSERT [dbo].[THUTHU] ([MaTT], [HoVaTenTT], [NgaySinhTT], [GioiTinhTT], [DiaChiTT]) VALUES (N'TT000005', N'Nguyễn Trần Khánh Vân', CAST(N'1994-01-01' AS Date), N'Nữ', N'1000 Lê Văn Hiến, Ngũ Hành Sơn, Đà Nẵng')
GO
ALTER TABLE [dbo].[LICHDAT] ADD  DEFAULT ((0)) FOR [SoLuongSV]
GO
ALTER TABLE [dbo].[LICHDAT]  WITH CHECK ADD  CONSTRAINT [fkLICHDAT_THUTHU] FOREIGN KEY([MaTT])
REFERENCES [dbo].[THUTHU] ([MaTT])
GO
ALTER TABLE [dbo].[LICHDAT] CHECK CONSTRAINT [fkLICHDAT_THUTHU]
GO
ALTER TABLE [dbo].[LICHDATCHITIET]  WITH CHECK ADD  CONSTRAINT [fkLICHDATCHITIET_LICHDAT] FOREIGN KEY([MaDat])
REFERENCES [dbo].[LICHDAT] ([MaDat])
GO
ALTER TABLE [dbo].[LICHDATCHITIET] CHECK CONSTRAINT [fkLICHDATCHITIET_LICHDAT]
GO
ALTER TABLE [dbo].[LICHDATCHITIET]  WITH CHECK ADD  CONSTRAINT [fkLICHDATCHITIET_SINHVIEN] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SINHVIEN] ([MaSV])
GO
ALTER TABLE [dbo].[LICHDATCHITIET] CHECK CONSTRAINT [fkLICHDATCHITIET_SINHVIEN]
GO
ALTER TABLE [dbo].[TAIKHOANSV]  WITH CHECK ADD  CONSTRAINT [fkTKSV] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SINHVIEN] ([MaSV])
GO
ALTER TABLE [dbo].[TAIKHOANSV] CHECK CONSTRAINT [fkTKSV]
GO
ALTER TABLE [dbo].[TAIKHOANTT]  WITH CHECK ADD  CONSTRAINT [fkTHUTHU] FOREIGN KEY([MaTT])
REFERENCES [dbo].[THUTHU] ([MaTT])
GO
ALTER TABLE [dbo].[TAIKHOANTT] CHECK CONSTRAINT [fkTHUTHU]
GO
ALTER TABLE [dbo].[TAIKHOANSV]  WITH CHECK ADD CHECK  (([MatKhauSV]>=(5)))
GO
ALTER TABLE [dbo].[TAIKHOANTT]  WITH CHECK ADD CHECK  (([MatKhauTT]>=(5)))
GO
---------------------------Hàm và thủ tục----------------------------------
-- Đăng ký đặt lịch trả sách
alter Proc PROC_dangki(@MaSV char(12) , @NgayDat date, @KhungGio nvarchar(20), @kq bit out)
as
begin
	IF (Select count(MaSV) from dbo.SINHVIEN where MaSV = @Masv ) > 0
	begin
		Declare @them char(8)
		set @them = (select MaDat from dbo.LICHDAT where NgayDat = @NgayDat and KhungGio = @KhungGio)
		Declare @them1 nvarchar(4) = (select TrangThaiDat 
									from LICHDATCHITIET 
									where MaSV = @MaSV and MaDat = @them)
		IF @them1 = N'Hủy'
		begin
			update dbo.LICHDATCHITIET
			set TrangThaiDat = ''
			where MaSV = @MaSV and MaDat = @them
			If @@ROWCOUNT > 0 
				Set @kq = 1
			else 
				Set @kq = 0
		end
		Else 
		BEGIN
			insert into dbo.LICHDATCHITIET (MaDat,MaSV,TrangThaiDat)
			values (@them,@MaSV,'')
			If @@ROWCOUNT > 0 
				Set @kq = 1
			else 
				Set @kq = 0
		end 
	end 
	else 
		set @kq = 0
end
--Kiểm tra
declare @kq2 bit
exec PROC_dangki '181121521000','2021-04-03','07:00 - 09:00',@kq2 out
print @kq2
--
DROP Proc PROC_dangki
--
SELECT *FROM LICHDATCHITIET
SELECT *FROM LICHDAT
-- Chức năng tìm kiếm lịch đặt
create proc dbo.TimKiemlichdat 
@Madat char(8),
@NgayDat Date,
@KhungGio nvarchar(20)
As
Select Madat, NgayDat, KhungGio
from LICHDAT 
where (@Madat Is null or MaDat like '%'+@Madat+'%')
or (@NgayDat Is null or NgayDat = @NgayDat)
or (@KhungGio Is null or KhungGio like '%'+@KhungGio+'%')
--test
dbo.TimKiemlichdat 'T0000001','',''
DROP proc dbo.TimKiemlichdat 
select * from LICHDATCHITIET
--- xóa 1 chi tiết tiết đặt lịch trả sách 
alter Proc fgetxoaldct @MaDat char(8), @MaSV char(12)
As
Begin 
	Delete From dbo.LICHDATCHITIET Where MaDat = @MaDat AND MaSV = @MaSV
End 
exec fgetxoaldct 'T0000001','181121521001'

---------------------------------trigger----------------------------------------
---TRIGGER KHI SV ĐĂNG KÝ(CHITIETLICHDAT) THÌ SỐ LƯỢNG SV(LICHDAT) TĂNG LÊN
Create Trigger ThemSLSV
On LICHDATCHITIET
For INSERT

As
Begin
Declare @slthem int
Set @slthem= (select count(MaSV) from inserted group by MaDat )

		UPDATE LICHDAT
		Set SoLuongSV = SoLuongSV + @slthem 
		From LICHDAT join inserted on LICHDAT.MaDat = inserted.MaDat
		If(@@ROWCOUNT <=0)
		begin
			rollback
			return
		end
End

---TRIGGER KHI SV HỦY ĐĂNG KÝ(CHITIETLICHDAT) THÌ SỐ LƯỢNG SV(LICHDAT) GIẢM VÀ CẬP NHẬT TRẠNG THÁI HỦY
alter trigger XoaSV
on LICHDATCHITIET
instead of DELETE
as
begin
	declare @slxoa int 
	set @slxoa = (select count(deleted.MaSV) from deleted group by deleted.MaDat )
	UPDATE LICHDATCHITIET
	Set TrangThaiDat = N'Hủy'
	FROM LICHDATCHITIET join deleted on LICHDATCHITIET.MaDat = deleted.MaDat
	WHERE LICHDATCHITIET.MaSV = deleted.MaSV and LICHDATCHITIET.MaDat = deleted.MaDat
	IF(@@ROWCOUNT>0)
	begin 
		UPDATE LICHDAT
		Set SoLuongSV = SoLuongSV - @slxoa
		From LICHDAT join deleted on LICHDAT.MaDat = deleted.MaDat
		if(@@ROWCOUNT>0)
			return
		Else
		Begin
			Rollback
			Return
		end
	end
	else
	Begin
		RollBack
		Return
	End
end 
--thử
insert into LICHDATCHITIET VALUES (N'T0000001', N'181121521000', N'')
delete from LICHDATCHITIET 
where MaDat ='T0000001' and MaSV ='181121521000'

select * from LICHDATCHITIET
select * from LICHDAT
--KHI THỦ THƯ CHUYỂN TRẠNG THÁI LM VIỆC SANG HỦY (0) THÌ TỰ ĐỘNG CẬP NHẬT LẠI BẢNG 
alter trigger CapNhatTT
on LICHDAT
Instead of DELETE
as
begin
	UPDATE LICHDAT
	Set TrangThaiLV = 0
	from LICHDAT join deleted on lichdat.MaDat = deleted.MaDat
	Where Lichdat.MaDat = deleted.MaDat
	IF(@@ROWCOUNT > 0)
	Begin
		UPDATE LICHDAT
		Set SoLuongSV = 0
		from LICHDAT join deleted on lichdat.MaDat = deleted.MaDat
		Where Lichdat.MaDat = deleted.MaDat
		if(@@ROWCOUNT >0)
			return
		else 
		Begin
			rollback
			return
		end
	end
	Else 
	Begin
		rollback
		return
	end
end 

select * from LICHDAT

