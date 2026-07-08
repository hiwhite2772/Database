/*********************CREATE DATABASE***************************/
CREATE DATABASE QUANLYDEAN_B5_01
GO
USE QUANLYDEAN_B5_01

/*********************TAO BANG NHAN VIEN***********************/
CREATE TABLE NHANVIEN
(
  HONV NVARCHAR(15) NOT NULL,
  TENLOT NVARCHAR(15) NOT NULL,
  TENNV NVARCHAR(15) NOT NULL,
  MANV VARCHAR(9) NOT NULL,
  NGSINH DATETIME NULL,
  DCHI NVARCHAR(50) NULL,
  PHAI NVARCHAR(3) NOT NULL,
  LUONG FLOAT NULL,
  MA_NQL VARCHAR(9) NULL,
  PHG INT NULL
)

/***********************TAO BANG PHONG BAN ********************/
CREATE TABLE PHONGBAN
(
  TENPHG NVARCHAR(15) NOT NULL,
  MAPHG INT NOT NULL,
  TRPHG VARCHAR(9) NOT NULL,
  NG_NHANCHUC DATETIME NOT NULL
)

/**********************TAO BANG DE AN**************************/
CREATE TABLE DEAN
(
  TENDA NVARCHAR(15) NOT NULL,
  MADA INT NOT NULL,
  DDIEM_DA NVARCHAR(15) NOT NULL,
  PHONG INT NULL
)

/*********************TAO BANG PHAN CONG *********************/
CREATE TABLE PHANCONG
(
  MA_NVIEN VARCHAR(9) NOT NULL,
  SODA INT NOT NULL,
  THOIGIAN FLOAT NULL
)

/*********************TAO BANG THAN NHAN ********************/
CREATE TABLE THANNHAN
(
  MA_NVIEN VARCHAR(9) NOT NULL,
  TENTN NVARCHAR(15) NOT NULL,
  PHAI NVARCHAR(3) NOT NULL,
  NGSINH DATETIME NULL,
  QUANHE NVARCHAR(8) NOT NULL
)

--------------------------------------------------------------
-- Câu A: Thêm dữ liệu vào các bảng sau bằng câu lệnh Insert
INSERT INTO NHANVIEN
VALUES
  (N'Phạm', N'Văn', N'Vinh', 'NV0001', '1995/10/11', N'Trưng Vương, Hà Nội', N'Nam', 55000, null, 1),
  (N'Nguyễn', N'Thanh', N'Tùng', 'NV0002', '1997/08/12', N'Nguyễn Văn Cừ, Q5, HCM', N'Nam', 40000, 'NV0001', 5),
  (N'Lê', N'Quỳnh', N'Như', 'NV0003', '1996/6/20', N'Hồ Văn Huê, PN, HCM', N'Nữ', 43000, N'NV0001', 4),
  (N'Đinh', N'Bá', N'Tiến', 'NV0004', '1995/9/1', N'Trần Hưng Đạo, Q1, HCM', N'Nam', 30000, N'NV0002', 5)

INSERT INTO PHONGBAN
VALUES
  (N'Nghiên cứu', 5, 'NV0002', '2023/5/22'),
  (N'Điều hành', 4, 'NV0004', '2025/1/1'),
  (N'Quản lý', 1, 'NV0001', '2020/6/19')

INSERT INTO DEAN
VALUES
  (N'Sản phẩm X', 1, N'VŨNG TÀU', 5),
  (N'Sản phẩm Y', 2, N'NHA TRANG', 5),
  (N'Sản phẩm Z', 3, N'TP HCM', 5)

INSERT INTO THANNHAN
VALUES
  ('NV0002', N'Trinh', N'Nữ', '2022/04/5', N'Con gái'),
  ('NV0003', N'Minh', N'Nam', '1995/02/28', N'Vợ chồng')

INSERT INTO PHANCONG
VALUES
  ('NV0004', 1, 32.5),
  ('NV0004', 2, 7.5),
  ('NV0002', 3, 10),
  ('NV0002', 10, 10)

-- Câu B: Thực hiện các truy vấn thao tác trên dữ liệu sau:
-- 1. Đổi giá trị tại thuộc tính THOIGIAN thành 5 đối với các bộ trong bảng PHANCONG thỏa mãn MA_NVIEN = 'NV0002' và SODA = 10.
UPDATE PHANCONG SET THOIGIAN = 5 WHERE MA_NVIEN = 'NV0002' AND THOIGIAN = 10

-- 2. Đổi giá trị tại thuộc tính TENDA thành 'Tin hoc X' đối với các bộ trong bảng DEAN thỏa mãn MADA = 3 và PHONG = 5.
UPDATE DEAN SET TENDA = N'Tin hoc X' WHERE MADA = 3 AND PHONG = 5

-- 3. Xoá trong bảng PHANCONG các bộ thỏa mãn MA_NVIEN = 'NV0004' .
DELETE FROM PHANCONG WHERE MA_NVIEN = 'NV0004'

-- 4. Xoá trong bảng DEAN các bộ thỏa mãn TENDA = 'San pham X'.
DELETE FROM DEAN WHERE TENDA = N'Sản phẩm X'
