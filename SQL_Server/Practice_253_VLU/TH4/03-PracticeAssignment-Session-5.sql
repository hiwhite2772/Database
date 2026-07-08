CREATE DATABASE QUANLYHOCVIEN_B5_01
GO
USE QUANLYHOCVIEN_B5_01

CREATE TABLE KHOAHOC
(
	MAKH VARCHAR(5) NOT NULL, 
	TENKH NVARCHAR(100)NOT NULL,
	BD DATETIME NULL, 
	KT DATETIME NULL
)

CREATE TABLE HOCVIEN
(
	MAHV INT NOT NULL,
	HO NVARCHAR(50)NOT NULL,
	TEN NVARCHAR(30)NOT NULL,
	NTNS DATETIME NULL, 
	DC NVARCHAR(100) NULL,
	NNGHIEP NVARCHAR(100)NULL
)

CREATE TABLE GIAOVIEN
(
	MAGV INT NOT NULL, 
	HOTEN NVARCHAR(100)NOT NULL , 
	NTNS DATETIME NULL, 
	DC NVARCHAR(100) NULL
)


CREATE TABLE LOPHOC
(
	MALOP INT NOT NULL, 
	TENLOP NVARCHAR(100)NOT NULL, 
	MAKH VARCHAR(5) NOT NULL, 
	MAGV INT NOT NULL, 
	SISODK INT NULL, 
	LTRG INT NULL,
	PHHOC INT NULL
)

CREATE TABLE BIENLAI
(
	MAKH VARCHAR(5) NOT NULL, 
	MALH INT NOT NULL, 
	MAHV INT NOT NULL, 
	SOBL INT NOT NULL, 
	DIEM FLOAT NULL, 
	KQUA NVARCHAR(30) NULL, 
	XEPLOAI NVARCHAR(30) NULL, 
	TIENNOP FLOAT NULL
)

--Câu A: Thêm dữ liệu vào các bảng sau bằng câu lệnh Insert
INSERT INTO KHOAHOC VALUES
('PT125', N'Tiếng Pháp khoá 1/25', '2-15-2025', '5-15-2025'),
('PT225', N'Tiếng Pháp khoá 2/25', '5-30-2025', '8-30-2025')

INSERT INTO GIAOVIEN VALUES
(1, N'Trần Thanh', '1-2-1979', N'Trần Bình Trọng Q1'),
(2, N'Nguyễn Nam', '4-2-1980', N'Điện Biên Phủ Q1'),
(3, N'Hồ Nhân', '4-3-1980', N'Hồ Quý Cáp Q1')

INSERT INTO LOPHOC VALUES
(1, N'Tiếng pháp 1.1', 'PT125', 1, 10, 9, 101),
(2, N'Tiếng pháp 2.1', 'PT225', 2, 10, 6, 201),
(3, N'Tiếng pháp 1.2', 'PT225', 3, 10, 17, 202)

INSERT INTO HOCVIEN VALUES
(1, N'Hồ Thanh', N'Sơn','1-1-1992', N'Trần Hưng Đạo Q1', N'Bác sĩ'),
(2, N'Trần Nam', N'Thanh','4-3-1990', N'CMTT F10 QTB', N'Giáo viên'),
(3, N'Đỗ Nghiêm', N'Phụng','12-1-1999', N'Đỗ Duy Đương Q5', N'Học sinh'),
(4, N'Trần Nam', N'Sơn','3-8-2000', N'Hồ Tùng Mậu Q1', N'Học sinh'),
(5, N'Nguyễn Tiến', N'Dũng','4-3-1995', N'Thái Văn Lung Q1', N'Giáo viên')

INSERT INTO BIENLAI VALUES
('PT125', 1, 1, 1, 8, N'ĐẬU', N'KHÁ', 100000),
('PT225', 1, 2, 2, 4, N'KHÔNG ĐẬU', N'YẾU', 100000),
('PT125', 1, 3, 3, 4, N'KHÔNG ĐẬU', N'YẾU', 100000),
('PT225', 1, 4, 4, 3, N'KHÔNG ĐẬU', N'YẾU', 100000)

--Câu B: Thực hiện các truy vấn thao tác trên dữ liệu sau:
--1. Đổi giá trị tại thuộc tính HO, TEN đối với các bộ trong bảng HOCVIEN thỏa mãn MAHV=4 thành 'Lý' và 'Đức'.
UPDATE HOCVIEN SET HO = N'Lý', TEN = N'Đức' WHERE MAHV = 4

--2. Đổi giá trị tại thuộc tính DIEM thành 9 đối với các bộ trong bảng BIENLAI thỏa mãn MAHV=1 và MALH=1.
UPDATE BIENLAI SET DIEM = 9 WHERE MAHV = 1 AND MALH = 1

--3. Xoá trong bảng BIENLAI các bộ thỏa mãn MAHV từ 2 cho đến 4.
DELETE BIENLAI WHERE MAHV BETWEEN 2 AND 4

--4. Xoá trong bảng HOCVIEN các bộ thoả mãn MAHV=3 hoặc có nghề nghiệp là 'Học sinh'.
DELETE HOCVIEN WHERE MAHV = 3 OR NNGHIEP = N'Học sinh'