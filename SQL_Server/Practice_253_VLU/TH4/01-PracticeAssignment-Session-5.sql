CREATE DATABASE QUANLYCHUCVU_B5_2574802010111
GO
USE QUANLYCHUCVU_B5_2574802010111

--Table dbo.LUONGTHANG

--Create table and its columns
CREATE TABLE [dbo].[LUONGTHANG] (
	[MSNV] [int] NOT NULL,
	[THANG] [int] NOT NULL,
	[NAM] [int] NOT NULL,
	[LUONGCB] [int] NULL,
	[TAMUNG] [int] NULL,
	[PHUCAP] [int] NULL,
	[TONGLUONG] [int] NULL);
GO
 
--Table dbo.NHANVIEN

--Create table and its columns
CREATE TABLE [dbo].[NHANVIEN] (
	[MSNV] [int] NOT NULL,
	[HOTEN] [nvarchar](100) NULL,
	[MAPB] [int] NULL,
	[LOAINV] [nvarchar](2) NULL,
	[TRANGTHAI] [nvarchar](1) NULL);
GO

--Table dbo.NV_CHUCVU
--Create table and its columns
CREATE TABLE [dbo].[NV_CHUCVU] (
	[MSNV] [int] NOT NULL,
	[MSCV] [int] NULL)
GO

--Table dbo.PHONGBAN

--Create table and its columns
CREATE TABLE [dbo].[PHONGBAN] (
	[MAPB] [int] NOT NULL,
	[TENPB] [nvarchar](100) NULL)
GO

--Table dbo.PHUCAPCV

--Create table and its columns
CREATE TABLE [dbo].[PHUCAPCV] (
	[MSCV] [int] NOT NULL,
	[SOTIENPHUCAP] [int] NULL)
GO

--Table dbo.PHUCAPKHAC

--Create table and its columns
CREATE TABLE [dbo].[PHUCAPKHAC] (
	[MSNV] [int] NOT NULL,
	[NGAY] [date] NOT NULL,
	[SOTIEN] [int] NULL,
	[LYDO] [nvarchar](100) NULL)
GO
--
--Câu A: Thêm dữ liệu vào các bảng sau bằng câu lệnh Insert
-- BẢNG PHONGBAN
INSERT INTO PHONGBAN VALUES
(1, N'Khoa Công nghệ thông tin'),
(2, N'Khoa Công nghệ sinh học'),
(3, N'Khoa Kiến trúc')

-- BẢNG NHANVIEN
INSERT INTO NHANVIEN VALUES
(1, N'Phạm Hoàng Tú', 1, N'NV', N'Y'),
(2, N'Tô Thị Tường Vi', 1, N'CH', N'N'),
(3, N'Đặng Chí Thành', 2, N'NV', N'Y'),
(4, N'Nguyễn Mai Trang', 2, N'CH', N'Y')

-- BẢNG LUONGTHANG
INSERT INTO LUONGTHANG VALUES
(1, 1, 2026, 7000000, 200000, 200000, 7000000),
(1, 2, 2026, 7000000, 200000, 450000, 6750000),
(3, 1, 2026, 5000000, 200000, 500000, 5300000),
(4, 1, 2026, 4500000, 0, 600000, 5100000)

-- BẢNG PHUCAPCV
INSERT INTO PHUCAPCV VALUES
(1, 100000),
(2, 50000),
(3, 500000),
(4, 600000),
(5, 400000)

-- BẢNG NV_CHUCVU
INSERT INTO NV_CHUCVU VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 5)

-- BẢNG PHUCAPKHAC
INSERT INTO PHUCAPKHAC VALUES
(1, '2026/1/1', 100000, N'Sinh nhật'),
(2, '2026/2/5', 500000, N'Tết'),
(3, '2026/2/5', 250000, N'Tết'),
(3, '2026/4/30', 250000, N'Ngày Giải phóng miền Nam'),
(4, '2026/2/5', 500000, N'Tết'),
(5, '2026/2/5', 500000, N'Tết'),
(5, '2026/4/30', 400000, N'Ngày Giải phóng miền Nam')

----SELECT * FROM LUONGTHANG
SELECT * FROM NHANVIEN
SELECT * FROM LUONGTHANG
SELECT * FROM NV_CHUCVU
SELECT * FROM PHONGBAN
SELECT * FROM PHUCAPCV
SELECT * FROM PHUCAPKHAC

--Câu B: Cập nhật và xóa dữ liệu theo các câu hỏi sau bằng câu lệnh Update, Delete
--1. Đổi giá trị tại thuộc tính HOTEN, LOAINV đối với các bộ trong bảng NHANVIEN thỏa mãn MSNV = 2 thành 'Lý Thị Huyền Châu' và 'CH'.
UPDATE NHANVIEN SET HOTEN = N'Lý Thị Huyền Châu', LOAINV = 'CH' WHERE MSNV = 2
--2. Đổi giá trị tại thuộc tính SOTIENPHUCAP thành 300000 đối với các bộ trong bảng PHUCAPCV thỏa mãn MSCV=4.
UPDATE PHUCAPCV SET SOTIENPHUCAP = 300000 WHERE MSCV = 4
--3. Xoá trong bảng LUONGTHANG các bộ thoả mãn THANG = 2 hoặc PHUCAP lớn hơn 500000.
DELETE LUONGTHANG WHERE THANG = 2 OR PHUCAP > 500000
--4. Xoá trong bảng PHUCAPKHAC các bộ thỏa mãn MSNV = 3 và SOTIEN nhỏ hơn 300000.
DELETE PHUCAPKHAC WHERE MSNV = 3 AND SOTIEN < 300000