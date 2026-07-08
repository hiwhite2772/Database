/*********************USE DATABASE***************************/
CREATE DATABASE QUANLYDAOTAO_B5_2574802010111
GO
USE QUANLYDAOTAO_B5_2574802010111

/************************TAO BANG KHOA QUAN LY SINH VIEN*************************/
CREATE TABLE KHOA(MAKHOA VARCHAR(4) NOT NULL ,
			TENKHOA NVARCHAR(30) NOT NULL,
			      NAMTHANHLAP INT NOT NULL)

/************************TAO BANG SVIEN QUAN LY SINH VIEN*************************/
CREATE TABLE SVIEN(TEN NVARCHAR(30) NOT NULL,
			MASV INT NOT NULL,
			   NAM INT NOT NULL,
			      MAKH VARCHAR(4) NOT NULL)

/************************TAO BANG MHOC QUAN LY SINH VIEN*************************/
CREATE TABLE MHOC(TENMH NVARCHAR(30) NOT NULL,
			MAMH VARCHAR(8) NOT NULL,
			   TINCHI INT NOT NULL,
			      MAKH VARCHAR(4) NOT NULL)

/************************TAO BANG HPHAN QUAN LY SINH VIEN*************************/
CREATE TABLE HPHAN(MAHP INT NOT NULL,
			MAMH VARCHAR(8) NOT NULL,
			   HOCKY INT NOT NULL,
			      NAM INT NOT NULL,
					GV NVARCHAR(30) NOT NULL
			)

/************************TAO BANG KQUA QUAN LY SINH VIEN*************************/
CREATE TABLE KQUA(MASV INT NOT NULL,
			   MAHP INT NOT NULL,
			      DIEM FLOAT NOT NULL
			)

--------------------------------------
--Câu 1: Thêm dữ liệu vào các bảng sau bằng câu lệnh Insert
INSERT INTO KHOA VALUES
('CNTT', N'Công Nghệ Thông Tin', 1995),
('VL', N'Vật Lý', 1999),
('TOAN', N'Toán', 1999)

INSERT INTO MHOC VALUES
(N'Nhập môn Tin học', 'THDC', 4, 'CNTT'),
(N'Cấu trúc dữ liệu', 'CTDL', 4, 'CNTT'),
(N'Toán rời rạc', 'TRRAC', 3, 'TOAN')

INSERT INTO SVIEN VALUES
(N'Nguyễn Hoàng Sơn', 17, 1, 'CNTT'),
(N'Trần Gia Bảo', 8, 2, 'CNTT'),
(N'Lê Huyền Trang', 5, 3, 'TOAN'),
(N'Đặng Diễm Quỳnh', 23, 2, 'VL'),
(N'Phạm Minh Khôi', 12, 1, 'CNTT')

INSERT INTO HPHAN VALUES
(85, 'TRRAC', 1, 2025, N'Nguyễn Kim'),
(92, 'THDC', 1, 2026, N'Đặng Thu An'),
(102, 'CTDL', 2, 2025, N'Lý Hải')

INSERT INTO KQUA VALUES
(5, 85, 10),
(8, 92, 10),
(8, 102, 8),
(17, 92, 9),
(17, 102, 7)

SELECT * FROM KHOA
SELECT * FROM MHOC
SELECT * FROM SVIEN
SELECT * FROM HPHAN
SELECT * FROM KQUA
--------------------------------------
--Câu 2: Cập nhật và xóa dữ liệu theo các câu hỏi sau bằng câu lệnh Update, Delete
--a) Trong bảng HPHAN, hãy cập nhật lại Học kỳ (HOCKY) thành 2 và Năm (NAM) thành 2024 cho bản ghi có Mã học phần (MAHP) là 92.
UPDATE HPHAN SET HOCKY = 2, NAM = 2024 WHERE MAHP = 92
--b) Trong bảng KQUA, hãy thay đổi Điểm số (DIEM) thành 10 cho sinh viên có Mã sinh viên (MASV) là 17 đang theo học Mã học phần (MAHP) là 102.
UPDATE KQUA SET DIEM = 10 WHERE MASV = 17 AND MAHP = 102
--c) Xóa tất cả các dòng dữ liệu trong bảng KQUA của sinh viên có Mã sinh viên (MASV) là 5.
DELETE KQUA WHERE MASV = 5
--d) Xóa bản ghi trong bảng KQUA thỏa mãn đồng thời hai điều kiện: có Mã sinh viên (MASV) là 8 và Mã học phần (MAHP) là 92.
DELETE KQUA WHERE MASV = 8 AND MAHP = 92