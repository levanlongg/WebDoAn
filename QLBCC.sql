USE [E:\WEBDOAN\WEBDOAN\APP_DATA\QLBCC.MDF]
GO
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 03/11/2020 3:30:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaChiTietDDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaSP] [int] NULL,
	[TenSP] [nvarchar](255) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 03/11/2020 3:30:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaChiTietPN] [int] IDENTITY(1,1) NOT NULL,
	[MaPN] [int] NULL,
	[MaSP] [int] NULL,
	[DonGiaNhap] [decimal](18, 0) NULL,
	[SoLuongNhap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 03/11/2020 3:30:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[TinhTrangGiaoHang] [bit] NULL,
	[NgayGiao] [datetime] NULL,
	[DaThanhToan] [bit] NULL,
	[MaKH] [int] NULL,
	[UuDai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 03/11/2020 3:30:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [nvarchar](255) NULL,
	[MaThanhVien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 03/11/2020 3:30:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
	[Icon] [nvarchar](max) NULL,
	[BiDanh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 03/11/2020 3:30:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[MaLoaiTV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[UuDai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien_Quyen]    Script Date: 03/11/2020 3:30:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien_Quyen](
	[MaLoaiTV] [int] NOT NULL,
	[MaQuyen] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC,
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 03/11/2020 3:30:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [varchar](12) NULL,
	[Fax] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 03/11/2020 3:30:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[SoDienThoai] [varchar](20) NULL,
	[SoFax] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 03/11/2020 3:30:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 03/11/2020 3:30:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [nvarchar](50) NOT NULL,
	[TenQuyen] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 03/11/2020 3:30:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](255) NULL,
	[DonGia] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](max) NULL,
	[MoTaCT] [nvarchar](max) NULL,
	[DacDiem] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[SoLuongTon] [int] NULL,
	[LuotXem] [int] NULL,
	[LuotBinhChon] [int] NULL,
	[Luot BinhLuan] [int] NULL,
	[SoLanMua] [int] NULL,
	[Moi] [int] NULL,
	[MaNCC] [int] NULL,
	[MaNSX] [int] NULL,
	[MaLoaiSP] [int] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 03/11/2020 3:30:28 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](100) NULL,
	[MatKhau] [nvarchar](100) NULL,
	[HoTen] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [varchar](12) NULL,
	[MaLoaiTV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] ON 

INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (23, 1, 38, N'Cây xương rồng tai thỏ', 1, CAST(79000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (24, 2, 18, N'Cây Ngọc  Ngân Thủy Sinh', 1, CAST(99000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 

INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai]) VALUES (2, CAST(N'2019-12-07T09:20:49.057' AS DateTime), 0, CAST(N'2019-12-10T09:20:49.057' AS DateTime), 0, 20, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai]) VALUES (3, CAST(N'2019-12-07T11:03:59.317' AS DateTime), 0, CAST(N'2019-12-10T11:03:59.317' AS DateTime), 0, 21, 0)
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (19, N'le van long', N'Quảng Đông - Trung Quốc', N'levanlong@gmail.com', N'0987654321', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (20, N'le van long', N'Quảng Đông - Trung Quốc', N'a@gmail.com', N'0987654321', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (21, N'Long', N'Phù cừ- Hưng Yên', N'buiCo@gmail.com', N'0987654322', NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (1, N'Cây cảnh mini', N'A', N'SD')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (2, N'Cây sen đá', N'B', N'SD')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (3, N'Cây cảnh văn phòng', N'C', N'SD')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] ON 

INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (1, N'Admin', 0)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (2, N'Menber', 0)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (3, N'Vip', 20)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (4, N'Thường', 10)
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] OFF
GO
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'DangKy', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'QuanLyDonHang', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'QuanLySanPham', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (2, N'QuanLySanPham', NULL)
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (1, N'Đông Phong', N'Hà Nội - Việt Nam', N'webcc1@gmail.com', N'0987654321', N'987654')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (2, N'Văn Toàn', N'Hải Dương', N'webcc2@gmail.com', N'0987654322', N'987655')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (3, N'Tiểu Ca', N'Vân Nam-Trung Quốc', N'webcc3@gmail.com', N'0987654323', N'987656')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (4, N'Hòa An', N'Văn Giang- Hưng Yên', N'webcc4@gmail.com', N'0987654324', N'987657')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (5, N'WebCCanh3', N'Long An - Việt Nam', N'webcc5@gmail.com', N'0987654325', N'987658')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (6, N'Vân Phong', N'Quảng Đông - Trung Quốc', N'dongfeng@gmail.com', N'0987654322', N'0988888')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [Email], [SoDienThoai], [SoFax]) VALUES (1, N'Cây xanh Việt', N'Hà Nội- Việt Nam', N'webcaycanh@gmail.com', N'0987654321', N'987651')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [Email], [SoDienThoai], [SoFax]) VALUES (2, N'Cây cảnh miền tây', N'Cần Thơ - Việt Nam', N'caycanhviet@Gmail.com', N'0987654322', N'987652')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [Email], [SoDienThoai], [SoFax]) VALUES (3, N'Cây cảnh Hà Nội', N'Hà Nội -Việt Nam', N'caycanhhn@gmail.com', N'0987654323', N'987653')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [Email], [SoDienThoai], [SoFax]) VALUES (4, N'Cây Quảng Đông', N'Quảng Đông - Trung Quốc', N'zaifeng@gmail.com', N'0987654324', N'987654')
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
GO
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'DangKy', N'Đăng ký')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QuanLyDonHang', N'Quản lý đơn hàng')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QuanLySanPham', N'Quản lý sản phẩm')
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (3, N'Cây sen đá thược dược', CAST(99000 AS Decimal(18, 0)), N'Cây sen đá thược dược ngoài ý nghĩa một tình yêu, tình bạn bền vững mãi với thời gian thì nó còn có ý nghĩa tình yêu của người là hạnh phúc của tôi. Cây dùng để trang trí tiểu cảnh, để bàn làm việc, bàn uống nước, bàn lễ tân, quán cà phê...', N'Sen Đá thuộc cây họ bỏng có tất chả 393 loài khác nhau để phân biệt được từng loại thì có lẽ bạn phải tìm hiểu khá nhiều. Tuy nhiên nếu bạn đã thấy hoa thược dược thì khi nhìn cây sen đá loại này bạn có thể phát hiện ngay ra nó. Nó có lá giống như những cánh hoa chỉ khác là nó màu xanh. Đó chính là Sen Đá Thược Dược', N'So với các loại khác thì sen đá thược dược có lá nhỏ hơn thuôn dài và mọng, khi bạn nhìn thấy loại sen thược dược sẽ khiến cho bạn có một cảm giác dễ chịu về màu sắc của nó. Cây thân thấp cao từ 10 – 20 cm, lá xếp xung quanh trục, cây có thể ra hoa thường là cuối thu hoặc đầu đông', N'Caysendathuocduocnho.jpg', 1, 123, 123, 100, 23, 2, 2, 2, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (5, N'Cây lan quân tử', CAST(199000 AS Decimal(18, 0)), N'Cây Lan Quân Tử được coi là cây vượng tài đối với người tuổi Mùi. Người cầm tinh con Dê không để ý chuyện tiền tài, cũng không ham muốn kiếm tiền nên họ ít khi cố gắng để làm việc, vì vậy đương nhiên không có khả năng phát tài. Bạn có thể đặt một chậu Lan Quân Tử tại góc bên phải của bức tường đối diện ghế sô-pha, để tăng vận quý nhân trợ giúp bạn trên con đường phát tài.', N'Cây Lan Quân Tử được coi là loài hoa sang trọng, không những vậy trong phong thủy nó còn mang đến sự danh giá và phú quý cho chủ nhân. Cây được coi là cây vượng tài đối với người tuổi Mùi. Người cầm tinh con Dê không để ý chuyện tiền tài, cũng không ham muốn kiếm tiền nên họ ít khi cố gắng để làm việc, vì vậy đương nhiên không có khả năng phát tài. Bạn có thể đặt một chậu Lan Quân Tử tại góc bên phải của bức tường đối diện ghế sô-pha, để tăng vận quý nhân trợ giúp bạn trên con đường phát tài.', N'Cây Lan Quân Tử hay còn có tên gọi khác: Lan Huệ Cam, Huệ Đỏ, Đại Quân Tử.', N'Caylanquantu.jpg', 1, 122, 122, 122, 12, 1, 1, 3, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (7, N'Cây lan Ý thủy sinh', CAST(289000 AS Decimal(18, 0)), N'Cây Lan Ý thủy sinh có tác dụng thanh lọc không khí, hấp thụ các chất gây ung thư như formaldehyde, benzen và trichloroethylene, ngoài ra nó còn có khả năng giúp hấp thụ các bức xạ nhân tạo phát ra từ máy tính, tivi, lò vi sóng, đồ hồ điện tử...Cây phù hợp để bàn làm việc, trang ý quán cà phê, bàn uống nước....', N'Cây Lan Ý có tên khoa học Spathiphyllum wallisii, thuộc họ Araceae, ngoài ra Lan Ý còn các tên gọi khác như: Bạch Môn, Vỹ Hoa Trắng, Huệ Hoa Bình. Có lẽ chính vì loài cây này có hoa trắng và bền nên được đặt tên như vậy. Cây Lan Ý thủy sinh còn đứng đầu danh sách loài cây lọc không khí, không chỉ hấp thụ một số chất gây ung thư như: formaldehyde, benzen và trichloroethylene, nó còn hấp thụ cả xylene và toluene hóa chất tìm thấy trong dầu hỏa. Hơn thế nữa nó còn hấp thụ năng lượng bức xạ nhân tạo phát ra từ tivi, điện thoại, lò vi sóng, máy tính, đài, đồng hồ điện tử…Cây phù hợp để bàn làm việc, bàn học, phòng khách, trang trí quán cà phê, bàn lễ tân, các không gian trống…', N'Cây Lan ý là loài hoa thân cỏ nhỏ, phát triển thành bụi ở điều kiện thuận lợi lan ra rất nhanh, cây Lan Ý thủy sinh có tuổi thọ khá lâu đời, chúng sở hữu những chiếc lá lớn tính từ cuống lá phải dài tới 12-65 cm và rộng 3-25 cm, lá cây mọc bắt đầu từ mặt đất, hình lá dạng bầu dục thuôn nhọn đầu, lá có xu hướng rủ xuống gốc. Màu lá xanh thẫm, bóng và khá dày, trên mặt lá nổi lên những vết gân màu xanh nhạt hơn.  Nhiều người lầm tưởng hoa của lan ý là phần mo bao quanh một cái nhị nhưng thực chất, hoa của lan ý chính là cái nhị đó, hoa nhỏ mọc thành cụm hình trụ cong màu trắng ngà hoặc vàng nhạt, bên ngoài được bao quanh  bởi mo lá hình gần giống trái tim, thường có màu trắng muốt hoặc pha lẫn chút xanh nhạt.', N'Caylanythuysinh.jpg', 1, 12, 12, 12, 12, 1, 2, 2, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (13, N'Cây sen đá hồng phấn', CAST(89000 AS Decimal(18, 0)), N'Sen đá hồng phấn có ý nghĩa cho một tình yêu và tình bạn bền vững mãi theo thời gian. Cây phù hợp để làm quà tặng, để bàn làm việc, trang trí quán cà phê, góc học tập...', N'Sen đá hồng phấn là loại sen đá nhìn khác giống sen đá đất về hình dáng nhưng nó có màu xanh xẫm hơn và trên viền lá có màu không, trên lá thì có một lớp phấn trắng mỏng có lẽ chính vì điều này mà nó có tên gọi là hồng phấn. Sen đá hồng phấn có ý nghĩa cho một tình yêu, tình bạn bền vững theo thời gian.', N'Sen đá hồng phấn là loại cây thuộc họ bỏng ( Crassualaceae ), có nguồn gốc từ Mexico đến tây bắc Nam Mỹ. Cây có lá xếp quanh trục rất giống hình bông hoa, lá có màu xanh được phủ lên mình một lớp phấn trắng viền lá có màu hồng.', N'Caysendahongphan.jpg', 1, 0, 0, 0, 0, 1, 2, 2, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (14, N'Cây Kim Ngân', CAST(109000 AS Decimal(18, 0)), N'Cây Kim Ngân hay còn gọi là cây thắt bím, cây bím tóc phù hợp với gia chủ muốn mua cây đặt ở phòng khách, phòng hội họp, văn phòng công sở, nhà hàng, khách sạn, hoặc dùng làm quà tặng trong những dịp mừng lễ, tết, thăng chức, khai trương. Các cây nhỏ có thể để bàn ngoài tác dụng đem lại tài lộc nó lại còn có thể đuổi muỗi.', N'Cây Kim Ngân có tên khoa học là Pachira aquatica, xuất xứ từ Mexico, Brazill Nam Mỹ và đầm lầy Trung Mỹ. Đối với người tây phương thì họ gọi cây kim ngân là money tree có nghĩa là cây tiền, có thể chính vì lý do đó mà nó nhanh chóng phát triển và được đưa đến Việt Nam để làm cây cảnh văn phòng hoặc trang trí trong nhà. Với ý nghĩa khi gia chủ sở hữu cây kim ngân sẽ có nhiều tiền vàng, sự may mắn và thịnh vượng. Ngoài ra kim ngân còn có các tên khác như cây thắt bím và một tác dụng nữa mà ít người biết đến chính là nó có thể đuổi muỗi.', N'Kim ngân có thể cao được hơn 6m, thân dẻo dai, bền chắc. Ở bên Anh và Mỹ nó được dùng để làm bột giấy để in tiền. Lá kim ngân xòe rộng như bàn tay, xanh quanh năm. Một số tài liệu ghi chép thì cây nở hoa từ tháng 4 đến tháng 11. Hoa gồm những cánh lớn màu kem nhạt, nở về đêm và toả hương thoang thoảng, đài hoa màu nâu nhạt hình bầu dục với 5 cánh màu xanh vàng, dài 15cm. Quả kim ngân có hình trứng, đường kính khoảng 10cm. Khi chín quả có màu nâu nhạt. Quả khô nứt dụng ra khoảng 10 – 20 hạt. Tuy nhiên có thể ở môi trường và điều kiện không phù hợp mà rất hiếm khi thấy kim ngân nở hoa.

Cây kim ngân còn được gọi là cây thắt bím hay bím tóc vì ở giai đoạn cây con, người ta trồng chung từ 3 – 5 cây vào một chỗ rồi đan thắt như một cái bím tóc trông rất ngộ nghĩnh. Một chậu kim ngân nhỏ xinh có thể để trên bàn làm việc, quầy thu ngân , hoặc gắn lên đó chiếc nơ trang trí, sẽ trở thành món quà sinh nhật để tặng cho người thân. ', N'CCmini5.jpg', 1, 123, 123, 123, 12, 1, 2, 2, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (18, N'Cây Ngọc  Ngân Thủy Sinh', CAST(99000 AS Decimal(18, 0)), N'Cây Ngọc Ngân hay còn có tên là cây Valentine trong tình cảm nó được đại diện cho tình yêu, nó sẽ là một món quà ý nghĩa đối với các cặp đôi. Nếu đặt ở văn phòng, bàn làm việc, trong nhà thì Ngọc Ngân sẽ mang đến sự may mắn và bổng lộc cho gia chủ.', N'Cây Ngọc Ngân thủy sinh có tên khoa học Dieffenbachia picta, thuộc họ thực vật Araceae (Ráy) hay còn có tên gọi khác là cây Valentine. Cây Ngọc Ngân có lá khá nổi bật, vì tính tương phản giữa màu xanh thẫm của lá và màu trắng phần giữa lá, nó khiến người xem bị thu hút và thích thú ngay từ cái nhìn đầu tiên. Đặc biệt hơn nữa cây thủy sinh với chiếc bình thủy tinh giúp người xem thấy rõ bộ rễ khiến cây càng trở nên lộng lẫy. Cây Ngọc Ngân thủy sinh phù hợp để là cây cảnh nội thất, trang trí quán cà phê, văn phòng, bàn lễ tân…', N'Cây Ngọc Ngân có đặc điểm khá dễ nhận dạng, với lá có màu trắng chiếm 80% màu sắc còn lại là 20% màu xanh của viền lá và thân lá, lá cây mềm. Ngọc Ngân là loài cây thân thảo, thuộc loại thường xanh sống lâu năm, thân dày, có lá thay thế. Lá hình bầu dục giống ngọn giáo, mọc không đối xứng,  màu xanh đốm trắng, cuốn lá đầy bao bọc một phần thân cây. Cây Ngọc Ngân thủy sinh có rễ chùm nên phát triển và sinh trưởng rất nhanh, cây mọc thành từng bụi.

', N'CCmini6.jpg', 1, 12, 123, 1123, 123, 2, 2, 2, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (24, N'Cây Tùng Bồng  Lai', CAST(199000 AS Decimal(18, 0)), N'Cây Tùng Bồng Lai để bàn mang ý nghĩa phong thủy nhiều tới sức khỏe, tài lộc, thịnh vượng, giữ tiền và giữ của cho người sở hữu. Cây phong thủy dành cho người tuổi Thân', N'Cây Tùng Bồng Lai hay còn có tên gọi khác là Tùng Lá Văn Trúc, Tùng Lá Thiên Môn Đông. Đây là giống cây bản địa của vùng California-Mỹ. Nhưng cây có sức sống khá mãnh liệt nên nó dễ dàng thích nghi với điều kiện ở Việt Nam. Cây Tùng Bồng Lai mang ý nghĩa phong thủy nhiều tới sức khỏe, tài lộc, thịnh vượng, giữ tiền và giữ của cho người sở hữu. Đặc biệt với người cầm tinh con khỉ, có được cây này như có quý nhân phù trợ, làm ăn phát tài…Cây Tùng Bồng Lai nhỏ phù hợp để bàn, kệ sách, trang trí quán cà phê.', N'Cây Tùng Bồng Lai có đặc điểm lá mọc nhiều dày và thành từng tán một như những đám mây, lá nhỏ và nhọn mọc quanh cành. Thân cây mềm và khá dẻo có thể uốn lượn tùy theo ý thích. Một trong những đặc điểm mà Tùng Bồng Lai được nhiều người yêu thích đó là cây có tuổi thọ rất cao, lá có thể đến 5 năm mới thay, rễ cây mọc dài và bám chắc nên cây cũng có thể sóng được nơi gió mạnh, sống trên đá. Chính vì điều này mà cây Tùng của mang ý nghĩa cho sự trường thọ, sống lâu.', N'CCmini7.jpg', 1, 0, 0, 0, 0, 2, 2, 2, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (25, N'Cây Trường Sinh', CAST(119000 AS Decimal(18, 0)), N'Cây Trường Sinh có tác dụng làm sạch không khí, hút các bụi bẩn và hấp thụ các chất độc hại như: Formandehit, cacbondioxit...Trong phong thủy cây mang đến sức khỏe, tiền tài, may mắn cho gia chủ. Phù hợp làm cây để bàn làm việc, phòng khách, quầy lễ tân, quà tặng...', N'Qua tên gọi Cây Trường Sinh chúng ta cũng đã biết được nó là loại cây có sức sống mãnh liệt, xanh tốt quanh năm, cây không chịu được nắng gắt ưa nơi mát, có ánh nắng nhẹ, chính vì vậy cây Trường Sinh rất thích hợp làm cây cảnh trong nhà, cây cảnh để bàn làm việc. Cây có tác dụng làm sạch không khí, hút các bụi bẩn và hấp thụ các chất độc hại như: Formandehit, cacbondioxit…Trong phong thủy cây mang đến sức khỏe, tiền tài, may mắn cho gia chủ. Cây Trường Sinh đại diện cho mệnh Mộc, điều này có nghĩa nếu bạn là người mệnh Hỏa hoặc mệnh Mộc sẽ rất thích hợp với loại cây này, nó sẽ mang đến cho gia đình bạn nhiều điều tốt đẹp.', N'Cây Trường Sinh có tên khoa học Peperomia obtusifolia/ Kalanchoe pinnata (Lam) Pers, thuộc họ Thuốc bỏng – Crassulaceae. Cây còn biết đến với các tên gọi khác như: Lá Bông, cây Bỏng, Đả Bất Tử, Diệp Sinh Căn, Thiên cảnh, Thiên cảnh tạp giao…Cây thuộc loại thân thảo nên chỉ cao từ 10 – 40 cm.

Thân cây nhẵn bóng, tròn, mọng nước. Lá Cây Trường Sinh có màu xanh lục đậm, bóng, với hình hơi bầu về phía cộng lá. Lá mọc từ gốc hoặc thân, mọc đối xứng, xum xuê. Cây Trường Sinh cũng có hoa màu trắng tuy không to nhưng dạng chuỗi thời gian hoa nở kéo dài từ tháng 12 đến tháng 4 năm sau nên cái tên Trường Sinh càng phù hợp. Cây Trường Sinh có sức sống rất mãnh liệt, phát triển rất nhanh và gần như không có sâu bệnh. ', N'g1.jpg', 1, 1234, 33, 344, 233, 1, 1, 1, 3, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (28, N'Cây cau Tiểu Trâm', CAST(309000 AS Decimal(18, 0)), N'Cây Câu Tiểu Trâm hay còn gọi là cau may mắn, cây ưa mát không cần nhiều ánh sáng vẫn có thể phát triển, Cau Tiểu Trâm có khả năng hút các chất khí độc và lọc sạch không ý. Cây mang ý nghĩa may mắn và tài lộc trong phong thủy.', N'Cây Cau Tiểu Trâm là loại cây ưa mát và yêu cầu ánh sáng không nhiều, có thể phát triển tốt mà chỉ cần ánh sáng đèn huỳnh quang, nên nó rất phù hợp làm cây để bàn làm việc, văn phòng, trong nhà…Hơn thế nữa ngoài ra nó còn giúp lọc sạch các chất khí độc, bụi bẩn trong không khí rất có lợi cho sức khỏe. Cây mang ý nghĩa phong thủy có tác dụng án ngữ và loại bỏ khí xấu. Trồng một cây cau tiểu trâm trong nhà để khai thông vượn khí, mang lại may mắn tài lộc cho gia chủ.', N'Cây Cau Tiểu Trâm có tên thường gọi khác là Cây Cau May Mắn Tiểu Trâm, là cây họ thân dừa. Tên khoa học là: Arecaceae. Lá cây mọc từ thân chính, không có hoa, nhu cầu nước trung bình, thuộc dạng cây bụi lâu năm, thấp, thân xanh nhẵn, mọc thẳng, rễ chùm. Lá cây tiểu trâm là lá kép, giống lá cau, nhọn dài, hình mác, mềm, nhẵn, gân nổi rõ.', N'g3.jpg', 1, 0, 0, 0, 0, 2, 2, 2, 3, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (29, N'Cây Trầu  Bà', CAST(89000 AS Decimal(18, 0)), N'Cây Trầu Bà có ý nghĩa phong thủy mang đến cho gia chủ may mắn, thành đạt và bình an. Cây phù hợp để phòng khách, trang trí sảng, treo của sổ, hiên nhà, hoặc để bàn làm việc.', N'Cây Trầu Bà có tên khoa học: Epipremnum aureum) là một loài thực vật có hoa trong họ Ráy (Araceae). Cây trầu bà có nguồn gốc từ đảo Solomon, nguyên sinh ở Indonexia, ngoài tên gọi Trầu Bà cây còn có các tên gọi khác như: Vạn Niên Thanh leo, cây sắn dây Hoàng kim, Thạch Cam Tử, Trầu Ba Vàng, Hoàng Tam Điệp…Cây có khả năng hút được khí độc từ máy vi tính, loại bỏ chất gây ung thư formaldehydes và nhiều chất hóa học dễ bay hơi khác, là loại lọc không khí rất tốt. Cây Trầu Bà có ý nghĩa phong thủy mang đến cho gia chủ may mắn, thành đạt và bình an. Cây phù hợp để phòng khách, trang trí sảng, treo của sổ, hiên nhà, quán nhậu, quán cà phê hoặc để bàn làm việc.', N'Cây Trầu Bà có đặc điểm là cây thân thảo dạng leo, lá đơn, gốc lá hình tim, thuôn dài ở đỉnh, có loại xanh toàn phần, có loại có những đốm vàng trên lá, vàng nằm rải rác trên phiến lá, cụm hoa dạng mo, cuống ngắn, bò dài hoặc buông thõng xuống trên các chậu treo.

Cây Trầu Bà rất dễ sống và có tốc độ phát triển và sinh trưởng nhanh ở trong điều kiện bóng râm là loại hút nhiều nước hay là thích nước và cây Trầu Bà có thể trồng thủy sinh.', N'g4.jpg', 1, 12, 12, 123, 98, 1, 1, 1, 3, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (32, N'Cây Cỏ Lan Chi ', CAST(79000 AS Decimal(18, 0)), N'Cây Cỏ Lan Chi hay còn gọi là cây Dây Nhện, cây Mẫu Tử...Cây có sọc trắng xanh nhìn rất bắt mắt và nổi bật, hợp làm cây phong thủy cho người mệnh Kim và Thủy. Cây Lan Chi phù hợp làm cây để bàn, cây trang trí nội thất, văn phòng, làm cây treo, tường cây', N'Cỏ Cây Lan Chi hay còn một số tên gọi khác như: Cây Dây Nhện, cỏ Mẫu Tử, Cây Lục Thảo Trổ, Thảo Lan Chi, cây có tên khoa học là: Chlorophytum comosum là một loài thực vật lọc khí thuộc họ Thùa (Agavaceae), có nguồn gốc từ châu Phi. Năm 1794 loài này được nhà tự nhiên học người Thụy Điển Carl Peter Thunberg mô tả lần đầu tiên với tên gọi Anthericum comosum. Năm 1862 nó được mô tả lại và đặt vào chi Lục thảo (Chlorophytum) như hiện tại bởi Henri Antoine Jacques. Cây Cỏ Lan Chi phù hợp làm cây treo tường, tường cây, cây nội thất, cây trang trí quán cà phê, kệ tivi, cây để bàn làm việc…', N'Cây Cỏ Lan Chi lá có sọc trắng chạy dọc trung tâm, hai bên dải mép lá có màu xanh còn một loại nữa thì trung tâm lá có màu xanh và hai bên dải mép lại có màu trắng, cây này. Cây Lan Chi cao 30 – 40cm, phát triển theo bụi, rễ phình thành củ nhỏ nằm dưới đất, có màu trắng ngà, xốp, dễ đứt ra khỏi thân. Cây có hoa màu trắng 6 cánh, nhụy màu vàng.', N'g5.jpg', 1, 0, 0, 0, 0, 3, 2, 2, 3, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (33, N'Cây  Lưỡi Hổ', CAST(79000 AS Decimal(18, 0)), N'Cây lưỡi hổ có tác dụng thanh lọc không khí, hấp thụ chất gây ô nhiễm, cải thiện không gian sống, vào ban đêm cây nhả oxi nên rất phù hợp để phòng ngủ. Cây mang ý nghĩa phong thủy trừ tà xua đuổi ma quỹ, chống lại sự bỏ bùa để đem lại may mắn và tài lộc cho gia chủ. Cây phù hợp để bàn, để trong nhà, phòng ngủ...', N'Nằm trong top 10 những cây cảnh có khả năng giải độc khí tốt nhất trong nhà. Vì vậy cây lưỡi hổ luôn là sự lựa chọn hàng đầu đối với ai yêu sức khỏe. Theo một số nghiên cứu thì cây lưỡi hổ là loài có tác dụng thanh lọc không khí, hấp thụ chất gây ô nhiễm, cải thiện không gian sống, cây Lưỡi Hổ hấp thụ tốt độc tố gây ung thư như nitrogen oxide và formaldehyde. Không những thế, Cây lưỡi hổ sử dụng axit crassulacean quá trình trao đổi chất, hấp thụ carbon dioxide và giải phóng khí oxi vào ban đêm (quá trình quang hợp CAM). Đây là loài cây phù hợp trồng trong phòng ngủ, giúp tăng cường lượng oxy vào ban đêm, giúp bạn có một giấc ngủ sâu, tỉnh táo và sảng khoái khi thức dậy.', N'Cây Lưỡi Hổ có tên khoa học là Sansevieria trifasciata, là một loài của chi Sansevieria. Cây Lưỡi Hổ có nguồn gốc ở vùng nhiệt đới Tây Phi từ Nigeria phía đông Cộng hòa Dân chủ Congo, bao gồm cả Nam Phi và Tanzania. Cây có lá cứng, mọc thành bụi, mọc thẳng thuôn nhọn ở đầu, viền lá lượn sóng có màu vàng kéo dài từ gốc cho đến ngọn. Lá có thể dài đến 1,6m, rộng đến 8cm.', N'g6.jpg', 1, 12, 11, 111, 111, 1, 2, 2, 3, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (35, N'Cây Trường Sinh Mã Lai', CAST(99000 AS Decimal(18, 0)), N'Cây Trường Sinh có tác dụng làm sạch không khí, hút các bụi bẩn và hấp thụ các chất độc hại như: Formandehit, cacbondioxit...Trong phong thủy cây mang đến sức khỏe, tiền tài, may mắn cho gia chủ. Phù hợp làm cây để bàn làm việc, phòng khách, quầy lễ tân, quà tặng...', N'Qua tên gọi Cây Trường Sinh chúng ta cũng đã biết được nó là loại cây có sức sống mãnh liệt, xanh tốt quanh năm, cây không chịu được nắng gắt ưa nơi mát, có ánh nắng nhẹ, chính vì vậy cây Trường Sinh rất thích hợp làm cây cảnh trong nhà, cây cảnh để bàn làm việc. Cây có tác dụng làm sạch không khí, hút các bụi bẩn và hấp thụ các chất độc hại như: Formandehit, cacbondioxit…Trong phong thủy cây mang đến sức khỏe, tiền tài, may mắn cho gia chủ. Cây Trường Sinh đại diện cho mệnh Mộc, điều này có nghĩa nếu bạn là người mệnh Hỏa hoặc mệnh Mộc sẽ rất thích hợp với loại cây này, nó sẽ mang đến cho gia đình bạn nhiều điều tốt đẹp.', N'Cây Trường Sinh có tên khoa học Peperomia obtusifolia/ Kalanchoe pinnata (Lam) Pers, thuộc họ Thuốc bỏng – Crassulaceae. Cây còn biết đến với các tên gọi khác như: Lá Bông, cây Bỏng, Đả Bất Tử, Diệp Sinh Căn, Thiên cảnh, Thiên cảnh tạp giao…Cây thuộc loại thân thảo nên chỉ cao từ 10 – 40 cm.

Thân cây nhẵn bóng, tròn, mọng nước. Lá Cây Trường Sinh có màu xanh lục đậm, bóng, với hình hơi bầu về phía cộng lá. Lá mọc từ gốc hoặc thân, mọc đối xứng, xum xuê. Cây Trường Sinh cũng có hoa màu trắng tuy không to nhưng dạng chuỗi thời gian hoa nở kéo dài từ tháng 12 đến tháng 4 năm sau nên cái tên Trường Sinh càng phù hợp. Cây Trường Sinh có sức sống rất mãnh liệt, phát triển rất nhanh và gần như không có sâu bệnh. ', N'g7.jpg', 1, 12, 11, 111, 111, 1, 2, 2, 3, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (37, N'Cây Cỏ Đồng Tiền', CAST(69000 AS Decimal(18, 0)), N'Cây Cỏ Đồng Tiền thủy sinh có ý nghĩa phong thủy giúp tài vận thăng tiến, đồng thời cũng có thể giúp năng lực phân tích cá nhân, làm bạn mạnh mẽ hơn, làm việc quyết đoán hơn, đặc biệt cây giúp gia chủ nắm bắt tốt thời cơ, không bỏ qua cơ hội kiếm tiền.', N'Cây cỏ Đồng Tiền có tên gọi hydrocotyle verticillata là loại thực vật thân mềm, có khả năng sống được cả trên cạn và dưới nước. Ưa ẩm, thân mềm, lá có hình đồng xu không xẻ rãnh. Cỏ Đồng Tiền thủy sinh có ý nghĩa phong thủy giúp tài vận thăng tiến, đồng thời cũng có thể giúp năng lực phân tích cá nhân, làm bạn mạnh mẽ hơn, làm việc quyết đoán hơn, đặc biệt cây giúp gia chủ nắm bắt tốt thời cơ, không bỏ qua cơ hội kiếm tiền.', N'Cỏ Đồng Tiền có lá hình đồng xu, lá mỏng có màu xanh thân mềm, sống thành dạng bụi thích hợp ẩm ướt, có khả năng phát triển trong điều kiện thiếu sáng, chiều cao tối đa có thể lên đến 20 cm. Có thể sống được trong nước khi ngập cả lá. Nên rất nhiều nơi trồng cỏ Đồng Tiền trong bể cá cho đẹp.', N'g8.jpg', 1, 0, 0, 0, 0, 3, 2, 2, 3, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (38, N'Cây xương rồng tai thỏ', CAST(79000 AS Decimal(18, 0)), N'Xương rồng tai thỏ có tác dụng hút bức xạ máy tính, nên cây phù hợp để bàn máy tính, bàn làm việc...Ngoài ra cây nhỏ nhắn và đáng yêu dùng để làm món quà nhỏ tặng bạn cũng rất hợp lý.', N'Xương rồng tai thỏ là một trong những loài cây khá phổ biến và được nhiều người biết đến, ngoài tác dụng làm cảnh, nó còn rất nhiều tác dụng khác như làm thuốc, làm thức ăn…Xương rồng tai thỏ có dạng phiến, cây có nhiều gai nhỏ bao phủ, được trồng nhiều ở miền bắc Mexico và tây nam nước Mỹ. Đây là một loại rau xanh quen thuộc của vùng châu Mỹ Latin, đặc biệt là ở Mexico. Cây ra hoa và có quả ngọt giải khát được, mùi vị giống dưa hấu.', N'Xương rồng tai thỏ có dạng phiến hình ovan, thân có màu xanh, khi cây phát triển thường từ một thân chính để ra 2 nhánh cũng có thể nhiều hơn thường là 2, nên nó có tên gọi là xương rồng tai thỏ. Trên mặt thân có nhiều lớp gai nhỏ xếp thành từng hàng phân phối đều xung quanh bề mặt. Nếu ở điều kiện nhiệt độ mát, cây phát triển to thì xương rồng tai thỏ cũng có thể mọc lá thay vì gai. Cây có thể đạt đến chiều cao vài mét. Hoa thường có màu vàng hoặc màu đỏ.', N'Xuongrongtaitho.jpg', 1, 0, 0, 0, 0, 3, 2, 2, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (39, N'Cây sen đá sedum-com', CAST(89000 AS Decimal(18, 0)), N'Sen Đá Sedum Cơm nằm trong họ sedum là dòng có bông và lá rất nhỏ, phù hợp với những người yêu thích sự nhỏ nhắn, cây phù hợp để bàn làm việc và các góc nhỏ', N'Sen đá Sedum Cơm nằm trong họ sedum là dòng có bông và lá rất nhỏ, thường dùng để phối trong tiểu cảnh, hoặc dành cho những người thích các loại cây nhỏ nhắn và đáng yêu. Cây phù hợp để bàn làm việc, trang trí quán, trồng tại các ô nhỏ ở cửa sổ, ban công…', N'Sen đá Sedum Cơm có dạng đài nhỏ thường phát triển theo bụi, cây có màu xanh, mỗi lá nhỏ có kích thước tương đối giống hạt cơm thu nhỏ lại. Chính vì thế mà nó có tên gọi là Sedum Cơm.', N'Senda sedum-com.jpg', 1, 0, 0, 0, 0, 1, 1, 2, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (40, N'Cây sen đá ngọc guốc', CAST(79000 AS Decimal(18, 0)), N'Cao Sen đá Ngọc Guốc mang ý nghĩa cho một tình yêu và tình bạn vĩnh cửu, rất thích hợp dành cho những bạn thích sự độc đáo và mới lạ, cây phù hợp làm cây cảnh để bàn, tặng nhau trong các dịp sinh nhật...', N'Sen đá Ngọc Guốc là một trong những loại sen đá có hình dáng khá độc đáo, nếu bạn vặt 1 chiếc lá của cây ra rồi đặt xuống đất thì sẽ thấy nó giống như hình chiếc guốc chính vì vậy mà cây có tên là sen đá Ngọc Guốc, cây mang ý nghĩa cho một tình yêu và tình bạn vĩnh cửu, rất thích hợp dành cho những bạn thích sự độc đáo và mới lạ, cây phù hợp làm cây cảnh để bàn, tặng nhau trong các dịp sinh nhật…', N'Sen đá Ngọc Guốc thuộc Echeveria là một chi thực vật có hoa trong họ Crassulaceae, cây có nguồn gốc từ khu vực bán hoang mạc Trung Mỹ, từ Mexico tới tây bắc Nam Mỹ, vì vậy cây có lá dày và mọng nước để có thể chịu được thời tiết khô hạn. Sen Ngọc Guốc có lá xếp dạng đài cây có màu xanh nhọn dần ở phần đầu lá, phía mặt trên trong hơn và cũng là đặc trưng của loài sen đá Ngọc', N'Sendangocguoc.jpg', 1, 0, 0, 0, 0, 1, 1, 2, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (42, N'Cây xương rồng thanh sơn', CAST(69000 AS Decimal(18, 0)), N'Cây Xương rồng Thanh Sơn được nhiều bạn trẻ ưa thích, mua về trang trí bàn học, bàn làm việc, tặng nhau trong các dịp lễ như mong muốn dù có khó khăn thế nào cũng vẫn có thể vượt qua.', N'Xương rồng Thanh Sơn hay còn gọi là xương rồng Ngọn Núi. Cây thuộc họ Cactaceae có từ 24 đến 220 chi, tùy theo nguồn (90 chi phổ biến nhất), trong đó có từ 1.500 đến 1.800 loài. Những cây xương rồng được biết đến như là có nguồn gốc từ châu Mỹ, nhất là ở những vùng sa mạc. Có lẽ chính vì sức sống mãnh liệt của nó, mà xương rồng Thanh Sơn được nhiều bạn trẻ ưa thích, mua về trang trí bàn học, bàn làm việc, tặng nhau trong các dịp lễ như mong muốn dù có khó khăn thế nào cũng vẫn có thể vượt qua.', N'Xương rồng Thanh Sơn hay có tên gọi là xương rồng Ngọn Núi có đặc điểm và sự phát triển như những ngọn núi thu nhỏ trùng trùng điệp điệp, gồm 1 thân chính sau cây mọc thành nhiều nhánh nhỏ trên gốc chính, ở điều kiện thích hợp cây phát triển rất nhanh, một nhánh nhỏ của cây thường có 5 khía chạy dọc từ gốc cho đến ngọn, trên khía có những gai nhỏ mền.', N'Xuongrongthanhson.jpg', 1, 0, 0, 0, 0, 3, 2, 2, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [MoTa], [MoTaCT], [DacDiem], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [Luot BinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (43, N'Cây xương rồng trứng chim', CAST(79000 AS Decimal(18, 0)), N'Xương rồng trứng chim mang biểu tượng cho sự kiên cường, cây giúp hút bức xạ máy tính. Phù hợp để bàn làm việc, bàn học, trang trí...', N'Xương rồng trứng chim có một lớp gai nhỏ màu trắng bao phủ khá kín để bảo vệ cây. Thoạt đầu nếu bạn nhìn từ xa có thể nó khiến bạn nghĩ đó là những quả trứng nhỏ, rất ngộ nghĩnh và đáng yêu, có thể chính vì lý do đó mà loài xương rồng này có tên gọi là xương rồng trứng chim. Cây ra hoa nhỏ có màu trắng hoặc đỏ.', N'Hầu hết các bạn cũng đã biết xương rồng là loài cây rất kiên cường, nó có khả năng chịu được nắng nóng và khô hạn kéo dài. Xương rồng trứng chim cũng vậy, thân cây mọng nước và có gai bao phủ, như tấm lá chắn, khiến sự khiên cường của nó càng được tăng lên.', N'Xuongrongtrungchim.jpg', 1, 2, 2, 2, 2, 2, 2, 2, 1, 0)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV]) VALUES (1, N'Giamdoc', N'123456', N'Lê Văn Long', N'Phù Cừ - Hưng Yên', N'levanlong99pchy@gmail.com', N'0987654321', 1)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV]) VALUES (2, N'Nhanvienquanlykho', N'1234567', N'Lê Văn Long', N'Phù Cừ - Hưng Yên', N'levanlong99pchy@gmail.com', N'0987654322', 2)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV]) VALUES (3, N'Nhanvienbanhang', N'12345678', N'Nguyễn Đức Hiếu', N'Phù Cừ - Hưng Yên', N'levanlong99pchy@gmail.com', N'0987654323', 3)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV]) VALUES (4, N'Thuong', N'123456', N'Lê Xuân Thắng', N'Văn Giang - Hưng Yên', N'thanglexuan@gmail.com', N'0987654444', 4)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV]) VALUES (5, N'Vip', N'98765', N'Bui Dang Co', N'Quảng Đông - Trung Quốc', N'levanlong@gmail.com', N'12345678', 4)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV]) VALUES (6, N'Login', N'98765', N'Bui Dang Co', N'Quảng Đông - Trung Quốc', N'levanlong@gmail.com', N'12345678', 4)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV]) VALUES (7, N'Login', N'98765', N'Bui Dang Co', N'Quảng Đông - Trung Quốc', N'levanlong@gmail.com', N'12345678', 4)
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_Table_ThanhVien] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_Table_ThanhVien]
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_LoaiThanhVien_Quyen_LoaiThanhVien] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen] CHECK CONSTRAINT [FK_LoaiThanhVien_Quyen_LoaiThanhVien]
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_LoaiThanhVien_Quyen_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen] CHECK CONSTRAINT [FK_LoaiThanhVien_Quyen_Quyen]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_ToTable] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_ToTable]
GO
