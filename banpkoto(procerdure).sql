USE [banphukienoto]
GO
/****** Object:  Table [dbo].[hoa_don]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don](
	[id] [int] NOT NULL,
	[id_kh] [varchar](50) NOT NULL,
	[ho_ten] [nvarchar](111) NOT NULL,
	[dia_chi] [nvarchar](111) NOT NULL,
	[tong_tien] [nvarchar](111) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khach_hang]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khach_hang](
	[id] [int] NOT NULL,
	[hoten] [nvarchar](100) NULL,
	[email] [varchar](255) NULL,
	[diachi] [nvarchar](255) NULL,
	[sdt] [varchar](20) NULL,
	[ghichu] [nvarchar](max) NULL,
 CONSTRAINT [PK__khach_ha__3213E83F1693011E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai_sp]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai_sp](
	[id] [int] NOT NULL,
	[tenloai] [nvarchar](100) NOT NULL,
	[hinhanh] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhan_vien]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhan_vien](
	[id] [int] NOT NULL,
	[hoten] [nvarchar](255) NULL,
	[gioitinh] [nvarchar](10) NULL,
	[hinhanh] [varchar](250) NULL,
	[ngaysinh] [date] NULL,
	[diachi] [nvarchar](255) NULL,
	[sdt] [varchar](20) NULL,
	[email] [varchar](255) NULL,
	[capbac] [nvarchar](20) NULL,
 CONSTRAINT [PK__nhan_vie__3213E83F30D57A69] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[id] [int] NOT NULL,
	[ten_sp] [nvarchar](max) NULL,
	[id_loai_sp] [int] NULL,
	[mota_sp] [nvarchar](max) NULL,
	[gia_km] [int] NULL,
	[gia_kkm] [int] NULL,
	[so_luong] [int] NULL,
	[hinh_anh] [nvarchar](255) NULL,
	[don_vi_tinh] [nvarchar](255) NULL,
 CONSTRAINT [PK__san_pham__3213E83F9010901B] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tai_khoan]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tai_khoan](
	[id] [int] NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[sdt] [varchar](20) NULL,
	[email] [varchar](255) NULL,
	[taikhoan] [varchar](50) NULL,
	[matkhau] [varchar](255) NULL,
	[diachi] [nvarchar](255) NULL,
	[hinhanh] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tin_tuc]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tin_tuc](
	[id] [int] NOT NULL,
	[tieude] [nvarchar](200) NOT NULL,
	[noidung] [nvarchar](max) NOT NULL,
	[hinhanh] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[khach_hang] ([id], [hoten], [email], [diachi], [sdt], [ghichu]) VALUES (1, N'Noi that oto xuan hoan', N'fgdsfgd@gmail.com', N'Hưng Yên ', N'05687478545', NULL)
INSERT [dbo].[khach_hang] ([id], [hoten], [email], [diachi], [sdt], [ghichu]) VALUES (2, N'sua chua oto PCV', N'fgdsfgd@gmail.com', N'Hưng Yên ', N'04557567566', NULL)
INSERT [dbo].[khach_hang] ([id], [hoten], [email], [diachi], [sdt], [ghichu]) VALUES (3, N'H01', N'fgdsfgd@gmail.com', N'Hưng Yên ', N'09365464354', NULL)
INSERT [dbo].[khach_hang] ([id], [hoten], [email], [diachi], [sdt], [ghichu]) VALUES (4, N'7749 Garage', N'fgdsfgd@gmail.com', N'Hưng Yên ', N'09784534556', NULL)
INSERT [dbo].[khach_hang] ([id], [hoten], [email], [diachi], [sdt], [ghichu]) VALUES (5, N'ngdung01', N'fgdsfgd@gmail.com', N'Hưng Yên ', N'09567523456', NULL)
INSERT [dbo].[khach_hang] ([id], [hoten], [email], [diachi], [sdt], [ghichu]) VALUES (6, N'Garage oto vu tung', N'fgdsfgd@gmail.com', N'Hưng Yên ', N'09667775464', NULL)
GO
INSERT [dbo].[loai_sp] ([id], [tenloai], [hinhanh]) VALUES (1, N'Ghế da', N'image.png')
INSERT [dbo].[loai_sp] ([id], [tenloai], [hinhanh]) VALUES (2, N'Bảng điện thoại', N'image.png')
INSERT [dbo].[loai_sp] ([id], [tenloai], [hinhanh]) VALUES (3, N'Giá đỡ điện thoại', N'image.png')
INSERT [dbo].[loai_sp] ([id], [tenloai], [hinhanh]) VALUES (4, N'Bao da chìa khóa thông minh', N'image.png')
INSERT [dbo].[loai_sp] ([id], [tenloai], [hinhanh]) VALUES (5, N'Bạt che nắng mưa', N'image.png')
INSERT [dbo].[loai_sp] ([id], [tenloai], [hinhanh]) VALUES (6, N'Gương phụ ', N'image.png')
INSERT [dbo].[loai_sp] ([id], [tenloai], [hinhanh]) VALUES (7, N'Bọc da vô lăng', N'image.png')
INSERT [dbo].[loai_sp] ([id], [tenloai], [hinhanh]) VALUES (8, N'Đệm ô tô ', N'image.png')
INSERT [dbo].[loai_sp] ([id], [tenloai], [hinhanh]) VALUES (9, N'Anten Vây cá mập', N'image.png')
INSERT [dbo].[loai_sp] ([id], [tenloai], [hinhanh]) VALUES (10, N'123', N'123')
INSERT [dbo].[loai_sp] ([id], [tenloai], [hinhanh]) VALUES (11, N'123', N'123')
GO
INSERT [dbo].[nhan_vien] ([id], [hoten], [gioitinh], [hinhanh], [ngaysinh], [diachi], [sdt], [email], [capbac]) VALUES (1, N'nguyen van non', N'nu', NULL, CAST(N'1980-04-01' AS Date), N'Hưng Yên', N'0968574653', NULL, NULL)
INSERT [dbo].[nhan_vien] ([id], [hoten], [gioitinh], [hinhanh], [ngaysinh], [diachi], [sdt], [email], [capbac]) VALUES (2, N'phan tan trung', N'nam', NULL, CAST(N'1997-06-05' AS Date), N'Hưng Yên', N'0674857638', NULL, NULL)
INSERT [dbo].[nhan_vien] ([id], [hoten], [gioitinh], [hinhanh], [ngaysinh], [diachi], [sdt], [email], [capbac]) VALUES (3, N'bui xuan huan', N'lgbt', NULL, CAST(N'1998-04-02' AS Date), N'Hưng Yên', N'0446545777', NULL, NULL)
INSERT [dbo].[nhan_vien] ([id], [hoten], [gioitinh], [hinhanh], [ngaysinh], [diachi], [sdt], [email], [capbac]) VALUES (4, N'le quy mao', N'less', NULL, CAST(N'1997-06-05' AS Date), N'Hưng Yên', N'0344655567', NULL, NULL)
INSERT [dbo].[nhan_vien] ([id], [hoten], [gioitinh], [hinhanh], [ngaysinh], [diachi], [sdt], [email], [capbac]) VALUES (5, N'le van phu', N'gay', NULL, CAST(N'1980-04-01' AS Date), N'Hưng Yên', N'0233774356', NULL, NULL)
INSERT [dbo].[nhan_vien] ([id], [hoten], [gioitinh], [hinhanh], [ngaysinh], [diachi], [sdt], [email], [capbac]) VALUES (6, N'le van dat', N'nu', NULL, CAST(N'1998-04-02' AS Date), N'Hưng Yên', N'0867227633', NULL, NULL)
INSERT [dbo].[nhan_vien] ([id], [hoten], [gioitinh], [hinhanh], [ngaysinh], [diachi], [sdt], [email], [capbac]) VALUES (7, N'tran nguc tu', N'nam', NULL, CAST(N'1980-04-01' AS Date), N'Hưng Yên', N'0233774356', NULL, NULL)
INSERT [dbo].[nhan_vien] ([id], [hoten], [gioitinh], [hinhanh], [ngaysinh], [diachi], [sdt], [email], [capbac]) VALUES (8, N'nguyen van thang', N'nam', NULL, CAST(N'1998-04-02' AS Date), N'Hưng Yên', N'0674857638', NULL, NULL)
INSERT [dbo].[nhan_vien] ([id], [hoten], [gioitinh], [hinhanh], [ngaysinh], [diachi], [sdt], [email], [capbac]) VALUES (9, N'nguyen tran loan', N'nu', NULL, CAST(N'1997-06-05' AS Date), N'Hưng Yên', N'0344655567', NULL, NULL)
INSERT [dbo].[nhan_vien] ([id], [hoten], [gioitinh], [hinhanh], [ngaysinh], [diachi], [sdt], [email], [capbac]) VALUES (10, N'phan van toan', N'nu', NULL, CAST(N'1997-06-05' AS Date), N'Hưng Yên', N'0233774356', NULL, NULL)
GO
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (1, N'Ghe boc da chính hãng cao cap', 1, N'Ghế bọc da chính hãng cao cấp 1', 549000, 549000, 100, N'1.jpg', N'')
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (2, N'Bang dien thoai cuc chat', 2, N'Bảng điện thoại cực chất', 549000, 549000, 100, N'2.jpg', N'')
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (3, N'Giá đỡ điện thoại cao cấp chính hãng', 3, N'Giá đỡ điện thoại cao cấp chính hãng', 540000, 549000, 1, N'6.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (4, N'Bạt phủ oto che nắng che mưa siêu bền', 5, N'Bạt phủ oto che nắng che mưa siêu bền', 540000, 549000, 1, N'15.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (5, N'Giá đỡ điện thoại cao cấp chính hãng', 3, N'Giá đỡ điện thoại cao cấp chính hãng', 540000, 549000, 1, N'7.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (6, N'Ghế bọc da chính hãng cao cấp ', 1, N'Ghế bọc da chính hãng cao cấp ', 540000, 549000, 1, N'1.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (7, N'Nệm hơi ô tô vải nhung cao cấp ', 8, N'Nệm hơi ô tô vải nhung cao cấp ', 540000, 549000, 1, N'25.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (8, N'Ghế bọc da chính hãng cao cấp ', 1, N'Ghế bọc da chính hãng cao cấp ', 540000, 549000, 1, N'1.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (9, N'Nệm hơi ô tô vải nhung cao cấp ', 8, N'Nệm hơi ô tô vải nhung cao cấp ', 549000, 549000, 1, N'24.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (10, N'Ghế bọc da chính hãng cao cấp ', 1, N'Ghế bọc da chính hãng cao cấp ', 549000, 540000, 1, N'1.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (11, N'Bảng điện thoại cực chất', 2, N'Bảng điện thoại cực chất', 350000, 549000, 1, N'3.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (12, N'Giá đỡ điện thoại cao cấp chính hãng', 3, N'Giá đỡ điện thoại cao cấp chính hãng', 350000, 350000, 1, N'8.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (13, N'Bảng điện thoại cực chất', 2, N'Bảng điện thoại cực chất', 350000, 350000, 1, N'4.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (14, N'Vỏ ốp, bao da chìa khóa ô tô chính hãng sanh chảnh', 4, N'Vỏ ốp, bao da chìa khóa ô tô chính hãng sanh chảnh', 350000, 350000, 1, N'10.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (15, N'Ghế bọc da chính hãng cao cấp ', 1, N'Ghế bọc da chính hãng cao cấp ', 350000, 350000, 1, N'1.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (16, N'Giá đỡ điện thoại cao cấp chính hãng', 3, N'Giá đỡ điện thoại cao cấp chính hãng', 350000, 350000, 1, N'9.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (17, N'Bảng điện thoại cực chất', 2, N'Bảng điện thoại cực chất', 350000, 350000, 1, N'2.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (18, N'Ghế bọc da chính hãng cao cấp ', 1, N'Ghế bọc da chính hãng cao cấp ', 350000, 350000, 1, N'1.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (19, N'Giá đỡ điện thoại cao cấp chính hãng', 3, N'Giá đỡ điện thoại cao cấp chính hãng', 350000, 350000, 1, N'6.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (20, N'Ghế bọc da chính hãng cao cấp ', 1, N'Ghế bọc da chính hãng cao cấp ', 350000, 350000, 1, N'1.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (21, N'Bọc da vô lăng cao cấp sunny', 7, N'Bọc da vô lăng cao cấp sunny', 350000, 350000, 1, N'21.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (22, N'Bọc da vô lăng cao cấp sunny', 7, N'Bọc da vô lăng cao cấp sunny', 350000, 350000, 1, N'20.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (23, N'Bọc da vô lăng cao cấp sunny', 7, N'Bọc da vô lăng cao cấp sunny', 350000, 350000, 1, N'19.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (24, N'Đệm ô tô vải nhung cao cấp', 8, N'Đệm ô tô vải nhung cao cấp', 350000, 350000, 1, N'24.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (25, N'Đệm ô tô vải nhung cao cấp', 8, N'Đệm ô tô vải nhung cao cấp', 350000, 350000, 1, N'25.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (26, N'Đệm ô tô vải nhung cao cấp', 8, N'Đệm ô tô vải nhung cao cấp', 350000, 350000, 1, N'26.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (27, N'Anten Vây cá mập', 9, N'Anten Vây cá mập', 350000, 350000, 1, N'27.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (28, N'Anten Vây cá mập', 9, N'Anten Vây cá mập', 350000, 350000, 1, N'27.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (29, N'Anten Vây cá mập', 9, N'Anten Vây cá mập', 3350000, 350000, 1, N'27.jpg', NULL)
INSERT [dbo].[san_pham] ([id], [ten_sp], [id_loai_sp], [mota_sp], [gia_km], [gia_kkm], [so_luong], [hinh_anh], [don_vi_tinh]) VALUES (121, N'tét', 1, N'123', 600000, 600000, 100, N'12.jpg', N'undefined')
GO
INSERT [dbo].[tai_khoan] ([id], [hoten], [sdt], [email], [taikhoan], [matkhau], [diachi], [hinhanh]) VALUES (1, N'phan tan tai', N'0957685746', N'ttai@123gmail.com', N'hoangviet', N'123', N'hung yen', N'khong co')
INSERT [dbo].[tai_khoan] ([id], [hoten], [sdt], [email], [taikhoan], [matkhau], [diachi], [hinhanh]) VALUES (2, N'nguyen xuan hoan', N'0495867584', N'jkldjfkgj@gmail.com', N'nxhoan90', N'123', N'hưng yên', N'123.jpg')
INSERT [dbo].[tai_khoan] ([id], [hoten], [sdt], [email], [taikhoan], [matkhau], [diachi], [hinhanh]) VALUES (3, N'tran nguc tu ', N'0534596567', N'jtruiue@gmail.com', N'dfgdfgf', N'123', N'hưng yên', N'123.jpg')
INSERT [dbo].[tai_khoan] ([id], [hoten], [sdt], [email], [taikhoan], [matkhau], [diachi], [hinhanh]) VALUES (4, N'nguyen van thang', N'0758428354', N'jkldjfkgj@gmail.com', N'ntathang', N'123', N'hưng yên', N'123.jpg')
INSERT [dbo].[tai_khoan] ([id], [hoten], [sdt], [email], [taikhoan], [matkhau], [diachi], [hinhanh]) VALUES (5, N'tran thi tuyêt mai', N'0683475835', N'jtruiue@gmail.com', N'tmai01', N'123', N'hưng yên', N'123.jpg')
INSERT [dbo].[tai_khoan] ([id], [hoten], [sdt], [email], [taikhoan], [matkhau], [diachi], [hinhanh]) VALUES (6, N'nguyen huu viet', N'0534596567', N'jtruiue@gmail.com', N'hviet1102', N'123', N'hưng yên', N'123.jpg')
INSERT [dbo].[tai_khoan] ([id], [hoten], [sdt], [email], [taikhoan], [matkhau], [diachi], [hinhanh]) VALUES (7, N'dang van dat', N'0968574832', N'jtruiue@gmail.com', N'vdatngu', N'123', N'hưng yên', N'123.jpg')
INSERT [dbo].[tai_khoan] ([id], [hoten], [sdt], [email], [taikhoan], [matkhau], [diachi], [hinhanh]) VALUES (8, N'le trong hieu', N'0758428354', N'jtruiue@gmail.com', N'hieuhue', N'123', N'hưng yên', N'123.jpg')
INSERT [dbo].[tai_khoan] ([id], [hoten], [sdt], [email], [taikhoan], [matkhau], [diachi], [hinhanh]) VALUES (9, N'nguyen tuan viet', N'0683475835', N'jtruiue@gmail.com', N'vietcong', N'123', N'hưng yên', N'123.jpg')
INSERT [dbo].[tai_khoan] ([id], [hoten], [sdt], [email], [taikhoan], [matkhau], [diachi], [hinhanh]) VALUES (10, N'le van dat', N'0758428354', N'jtruiue@gmail.com', N'levan', N'123', N'hưng yên', N'123.jpg')
GO
/****** Object:  StoredProcedure [dbo].[add_hd]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[add_hd]
@id int,
  @id_kh varchar(50),
  @ho_ten nvarchar(111),
  @dia_chi nvarchar(111),
  @tong_tien nvarchar(111)
as
begin
insert into hoa_don
(
id,id_kh, ho_ten, dia_chi, tong_tien
)
values(
@id,@id_kh, @ho_ten, @dia_chi, @tong_tien
)
end
GO
/****** Object:  StoredProcedure [dbo].[add_kh]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[add_kh]
	@id int,
	@hoten nvarchar(200),
	  @email varchar(255),
	  @diachi nvarchar(255),
	  @sdt varchar(20),
	  @ghichu nvarchar(max)
as
begin
insert into khach_hang
(
id, hoten, email, diachi, sdt, ghichu
)
values(
@id, @hoten, @email, @diachi, @sdt, @ghichu
)
end
GO
/****** Object:  StoredProcedure [dbo].[add_lsp]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add_lsp]
@id int,
@tenloai nvarchar(100),
@hinhanh varchar(255)
as
begin
insert into loai_sp
(
id,tenloai, hinhanh
)
values(
@id,@tenloai, @hinhanh
)
end
GO
/****** Object:  StoredProcedure [dbo].[add_nv]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add_nv]
	@id int,
  @hoten nvarchar(255),
  @gioitinh nvarchar(10),
  @hinhanh varchar(250),
  @diachi nvarchar(255),
  @sdt varchar(20),
  @email varchar(255),
  @capbac nvarchar(20)
as
begin
insert into nhan_vien
(
id, hoten, gioitinh, hinhanh, diachi, sdt, email, capbac
)
values(
@id, @hoten, @gioitinh, @hinhanh, @diachi, @sdt, @email, @capbac
)
end
GO
/****** Object:  StoredProcedure [dbo].[add_sp]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[add_sp]
@id int,
@ten_sp varchar(100),
  @id_loai_sp int,
  @mota_sp nvarchar(max),
  @gia_km float,
  @gia_kkm float,
  @so_luong int,
  @hinh_anh varchar(255),
  @don_vi_tinh nvarchar(255)
as
begin
insert into san_pham
(
id, ten_sp, id_loai_sp, mota_sp, gia_km, gia_kkm, so_luong, hinh_anh, don_vi_tinh
)
values(
@id, @ten_sp, @id_loai_sp,  @mota_sp, @gia_km, @gia_kkm, @so_luong, @hinh_anh, @don_vi_tinh
)
end
GO
/****** Object:  StoredProcedure [dbo].[add_tk]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[add_tk]
  @id int,
  @hoten nvarchar(50),
  @sdt varchar(20),
  @email varchar(255),
  @taikhoan varchar(50),
  @matkhau varchar(255) ,
  @diachi nvarchar(255) ,
  @hinhanh varchar(255) 
as
begin
insert into tai_khoan
(
id, hoten, sdt, email, taikhoan, matkhau, diachi, hinhanh
)
values(
@id, @hoten, @sdt, @email, @taikhoan, @matkhau, @diachi, @hinhanh
)
end
GO
/****** Object:  StoredProcedure [dbo].[add_tt]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[add_tt]
@id int,
@tieude nvarchar(200),
  @noidung nvarchar(max),
  @hinhanh varchar(255)
as
begin
insert into tin_tuc
(
id, tieude, noidung, hinhanh
)
values(
@id, @tieude, @noidung, @hinhanh
)
end
GO
/****** Object:  StoredProcedure [dbo].[authenticate]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[authenticate]

@username varchar(50),
@password varchar(50)
as
begin
select * from tai_khoan
where taikhoan = @username and matkhau=@password
end
GO
/****** Object:  StoredProcedure [dbo].[delete_hd]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[delete_hd]
@id int
as 
delete from hoa_don 
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[delete_kh]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[delete_kh]
@id int
as 
delete from khach_hang
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[delete_lsp]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[delete_lsp]
@id int
as 
delete from loai_sp 
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[delete_nv]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[delete_nv]
@id int
as 
delete from nhan_vien
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[delete_sp]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[delete_sp]
@id int
as 
delete from san_pham
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[delete_tk]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[delete_tk]
@id int
as 
delete from tai_khoan
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[delete_tt]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[delete_tt]
@id int
as 
delete from tin_tuc
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[Get_HoaDon]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Get_HoaDon]
  as
  begin
  select * from hoa_don
  end
GO
/****** Object:  StoredProcedure [dbo].[Get_HoaDon_id]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Get_HoaDon_id]
@id int
as
select * from hoa_don 
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[Get_KhachHang]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Get_KhachHang]
  as
  begin
  select * from khach_hang
  end
GO
/****** Object:  StoredProcedure [dbo].[Get_KhachHang_id]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Get_KhachHang_id]
@id int
as
select * from khach_hang
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[Get_LoaiSP]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Get_LoaiSP]
  as
  begin
  select * from loai_sp 
  end
GO
/****** Object:  StoredProcedure [dbo].[Get_LoaiSP_id]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Get_LoaiSP_id]
@id int
as
select * from loai_sp 
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[Get_NhanVien]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Get_NhanVien]
  as
  begin
  select * from nhan_vien
  end
GO
/****** Object:  StoredProcedure [dbo].[Get_NhanVien_id]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Get_NhanVien_id]
@id int
as
select * from nhan_vien
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[Get_SanPham]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Get_SanPham]
  as
  begin
  select * from san_pham
  end
GO
/****** Object:  StoredProcedure [dbo].[Get_SanPham_id]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Get_SanPham_id]
@id int
as
select * from san_pham
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[Get_TaiKhoan]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Get_TaiKhoan]
  as
  begin
  select * from tai_khoan
  end
GO
/****** Object:  StoredProcedure [dbo].[Get_TaiKhoan_id]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Get_TaiKhoan_id]
@id int
as
select * from tai_khoan
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[Get_TinTuc]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Get_TinTuc]
  as
  begin
  select * from tin_tuc
  end
GO
/****** Object:  StoredProcedure [dbo].[Get_TinTuc_id]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Get_TinTuc_id]
@id int
as
select * from tin_tuc
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[GetDSSPbyidcate]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[GetDSSPbyidcate]
@id int
as
select * from san_pham
where id_loai_sp = @id
GO
/****** Object:  StoredProcedure [dbo].[Search_hd]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Search_hd]
@search nvarchar(500)
AS 
BEGIN
     SELECT *
     FROM hoa_don where id like '%'+@search+'%' or ho_ten like '%'+@search+'%' or '%'+@search = 'null'
END;
EXEC Search_hd 'a';
GO
/****** Object:  StoredProcedure [dbo].[Search_kh]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Search_kh]
@search nvarchar(500)
AS 
BEGIN
     SELECT *
     FROM khach_hang where hoten like '%'+@search+'%' or id like '%'+@search+'%'
END;
EXEC Search_kh 'a';
GO
/****** Object:  StoredProcedure [dbo].[Search_lsp]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Search_lsp]
@search nvarchar(500)
AS 
BEGIN
     SELECT *
     FROM loai_sp where tenloai like '%'+@search+'%' or id like '%'+@search+'%'
END;
EXEC Search_lsp 'a';
GO
/****** Object:  StoredProcedure [dbo].[Search_nv]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Search_nv]
@search nvarchar(500)
AS 
BEGIN
     SELECT *
     FROM nhan_vien where hoten like '%'+@search+'%' or diachi like '%'+@search+'%'
END;
EXEC Search_nv 'a';
GO
/****** Object:  StoredProcedure [dbo].[Search_sp]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Search_sp] 
@search nvarchar(500)
AS 
BEGIN
     SELECT *
     FROM san_pham where ten_sp like '%'+@search+'%' or gia_kkm like '%'+@search+'%'
END;
EXEC Search_sp 'a';
GO
/****** Object:  StoredProcedure [dbo].[Search_tk]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Search_tk]
@search nvarchar(500)
AS 
BEGIN
     SELECT *
     FROM tai_khoan where hoten like '%'+@search+'%' or taikhoan like '%'+@search+'%'
END;
EXEC Search_tk 'a';
GO
/****** Object:  StoredProcedure [dbo].[Search_tt]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Search_tt]
@search nvarchar(500)
AS 
BEGIN
     SELECT *
     FROM tin_tuc where tieude like '%'+@search+'%' or noidung like '%'+@search+'%'
END;
EXEC Search_tt 'a';
GO
/****** Object:  StoredProcedure [dbo].[update_hd]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_hd]
	@id int,
  @id_kh varchar(50),
  @ho_ten nvarchar(111),
  @dia_chi nvarchar(111),
  @tong_tien nvarchar(111)
as
begin
update hoa_don set 
id=@id,id_kh=@id_kh, ho_ten=@ho_ten,dia_chi= @dia_chi, tong_tien=@tong_tien
where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[update_kh]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_kh]
@id int,
	@hoten nvarchar(200),
	  @email varchar(255),
	  @diachi nvarchar(255),
	  @sdt varchar(20),
	  @ghichu nvarchar(max)
as
begin
update khach_hang set 
hoten=@hoten, email=@email, diachi=@diachi, sdt = @sdt, ghichu = @ghichu
where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[update_lsp]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_lsp]
@id int,
@tenloai nvarchar(100),
@hinhanh varchar(255)
as
begin
update loai_sp set 
tenloai=@tenloai,
hinhanh=@hinhanh
where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[update_nv]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_nv]
	@id int,
  @hoten nvarchar(255),
  @gioitinh nvarchar(10),
  @hinhanh varchar(250),
  @ngaysinh date,
  @diachi nvarchar(255),
  @sdt varchar(20),
  @email varchar(255),
  @capbac nvarchar(20)
as
begin
update nhan_vien set 
hoten=@hoten, gioitinh=@gioitinh, hinhanh=@hinhanh, ngaysinh=@ngaysinh, diachi=@diachi, sdt=@sdt,email = @email,capbac = @capbac
where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[update_sp]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_sp]
@id int,
@ten_sp varchar(100),
  @id_loai_sp int,
  @mota_sp nvarchar(max),
  @gia_km float,
  @gia_kkm float,
  @so_luong int,
  @hinh_anh varchar(255),
  @don_vi_tinh nvarchar(255)
as
begin
update san_pham set 
ten_sp=@ten_sp, id_loai_sp=@id_loai_sp, mota_sp=@mota_sp, gia_km=@gia_km, gia_kkm=@gia_kkm, so_luong=@so_luong, hinh_anh=@hinh_anh, don_vi_tinh=@don_vi_tinh
where id=@id
end
--
-- store tin tuc
--

GO
/****** Object:  StoredProcedure [dbo].[update_tk]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_tk]
  @id int,
  @hoten nvarchar(50),
  @sdt varchar(20),
  @email varchar(255),
  @taikhoan varchar(50),
  @matkhau varchar(255) ,
  @diachi nvarchar(255) ,
  @hinhanh varchar(255) 
as
begin
update tai_khoan set 
hoten=@hoten, sdt=@sdt, email=@email, taikhoan=@taikhoan, matkhau=@matkhau, diachi=@diachi, hinhanh=@hinhanh
where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[update_tt]    Script Date: 4/18/2023 4:04:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_tt]
@id int,
@tieude nvarchar(200),
  @noidung nvarchar(max),
  @hinhanh varchar(255)
as
begin
update tin_tuc set 
tieude=@tieude, noidung=@noidung, hinhanh=@hinhanh
where id=@id
end
GO
