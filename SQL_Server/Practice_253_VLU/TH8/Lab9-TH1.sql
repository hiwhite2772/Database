--------------------------CREATE DATABASE QUANLYMATHANG--------------------------

CREATE DATABASE QUANLYDONHANG_B9_01
GO
USE QUANLYDONHANG_B9_01

-- Tạo bảng Nhà cung cấp
CREATE TABLE nhacungcap 
( 
	manhacungcap VARCHAR(10) NOT NULL, 
	tennhacungcap NVARCHAR(40) NOT NULL, 
	tengiaodich NVARCHAR(30) NULL, 
	diachi NVARCHAR(60) NULL, 
	dienthoai NVARCHAR(20) NULL, 
	fax NVARCHAR(20) NULL, 
	email NVARCHAR(50) NULL 
) 

-- Tạo bảng Loại hàng 
CREATE TABLE loaihang 
( 
	maloaihang INT NOT NULL, 
	tenloaihang NVARCHAR(15) NOT NULL 
) 

-- Tạo bảng Mặt hàng
CREATE TABLE mathang 
( 
	mahang VARCHAR(10) NOT NULL, 
	tenhang NVARCHAR(50) NOT NULL, 
	manhacungcap VARCHAR(10) NULL , 
	maloaihang INT NULL , 
	soluong INT NULL, 
	donvitinh NVARCHAR(20) NULL , 
	giahang MONEY NULL
) 

-- Tạo bảng Nhân viên
CREATE TABLE nhanvien 
( 
	manhanvien VARCHAR(10) NOT NULL, 
	ho NVARCHAR(20) NOT NULL , 
	ten NVARCHAR(10) NOT NULL , 
	ngaysinh DATETIME NULL , 
	ngaylamviec DATETIME NULL , 
	diachi NVARCHAR(50) NULL , 
	dienthoai VARCHAR(15) NULL , 
	luongcoban MONEY NULL , 
	phucap MONEY NULL 
) 
 
-- Tạo bảng khách hàng
CREATE TABLE khachhang 
( 
	makhachhang VARCHAR(10) NOT NULL, 
	tenkhachhang NVARCHAR(50) NOT NULL , 
	tengiaodich NVARCHAR(30) NOT NULL , 
	diachi NVARCHAR(50) NULL , 
	email VARCHAR(30) NULL , 
	dienthoai VARCHAR(15) NULL , 
	fax VARCHAR(15) NULL 
) 

-- Tạo bảng đơn đặt hàng
CREATE TABLE dondathang 
( 
	sohoadon INT NOT NULL, 
	makhachhang VARCHAR(10) NULL , 
	manhanvien VARCHAR(10) NULL , 
	ngaydathang SMALLDATETIME NULL , 
	ngaygiaohang SMALLDATETIME NULL , 
	ngaychuyenhang SMALLDATETIME NULL , 
	noigiaohang NVARCHAR(50) NULL 
) 

-- Tạo bảng chi tiết đơn hàng 
CREATE TABLE chitietdathang 
( 
	sohoadon INT NOT NULL , 
	mahang VARCHAR(10) NOT NULL , 
	giaban MONEY NOT NULL , 
	soluong SMALLINT NOT NULL , 
	mucgiamgia REAL NOT NULL 
) 
---Tạo bảng điều kiện nhập hàng
CREATE TABLE dieukiennhaphang
(
	mahang VARCHAR(10) NOT NULL,
	mahang_truoc VARCHAR(10) NOT NULL
)
-------------------------------------------------------
ALTER TABLE NHACUNGCAP
ADD CONSTRAINT PK_NHACUNGCAP
	PRIMARY KEY (MANHACUNGCAP)

ALTER TABLE LOAIHANG
ADD CONSTRAINT PK_LOAIHANG
	PRIMARY KEY (MALOAIHANG)
ALTER TABLE MATHANG
ADD CONSTRAINT PK_MATHANG
	PRIMARY KEY (MAHANG)

ALTER TABLE NHANVIEN
ADD CONSTRAINT PK_NHANVIEN
	PRIMARY KEY (MANHANVIEN)
ALTER TABLE KHACHHANG
ADD CONSTRAINT PK_KHACHHANG
	PRIMARY KEY (MAKHACHHANG)

ALTER TABLE DONDATHANG
ADD CONSTRAINT PK_DONDATHANG
	PRIMARY KEY (SOHOADON)

ALTER TABLE CHITIETDATHANG
ADD CONSTRAINT PK_CHITIETDATHANG
	PRIMARY KEY (SOHOADON, MAHANG)

ALTER TABLE DIEUKIENNHAPHANG
ADD CONSTRAINT PK_DIEUKIENNHAPHANG
	PRIMARY KEY (MAHANG, MAHANG_TRUOC)

ALTER TABLE MATHANG
ADD CONSTRAINT FK_MATHANG_LOAIHANG
	FOREIGN KEY (MALOAIHANG)
	REFERENCES LOAIHANG(MALOAIHANG), 
	CONSTRAINT FK_MATHANG_NHACUNGCAP
	FOREIGN KEY (MANHACUNGCAP)
	REFERENCES NHACUNGCAP(MANHACUNGCAP)

ALTER TABLE DONDATHANG
ADD CONSTRAINT FK_DONDATHANG_KHACHANG
	FOREIGN KEY (MAKHACHHANG)
	REFERENCES KHACHHANG(MAKHACHHANG),
	CONSTRAINT FK_DONDATHANG_NHANVIEN
	FOREIGN KEY (MANHANVIEN)
	REFERENCES NHANVIEN(MANHANVIEN)


--ALTER TABLE CHITIETDATHANG
--ADD CONSTRAINT FK_CHITIETDATHANG_DONDATHANG
--	FOREIGN KEY (SOHOADON)
--	REFERENCES DONDATHANG(SOHOADON),
--	CONSTRAINT FK_CHITIETDATHANG_MATHANG
--	FOREIGN KEY (MAHANG)
--	REFERENCES MATHANG(MAHANG)

ALTER TABLE DIEUKIENNHAPHANG
ADD CONSTRAINT FK_DIEUKIENNHAPHANG_MATHANG1
	FOREIGN KEY (MAHANG)
	REFERENCES MATHANG(MAHANG),
	CONSTRAINT FK_DIEUKIENNHAPHANG_MATHANG2
	FOREIGN KEY (MAHANG_TRUOC)
	REFERENCES MATHANG(MAHANG)

---------------
DROP DATABASE QUANLYDONHANG_B9_01

---
DELETE DIEUKIENNHAPHANG
DELETE CHITIETDATHANG
DELETE DONDATHANG
DELETE NHANVIEN
DELETE KHACHHANG
DELETE MATHANG
DELETE NHACUNGCAP
DELETE LOAIHANG

---
DROP TABLE DIEUKIENNHAPHANG
DROP TABLE CHITIETDATHANG
DROP TABLE DONDATHANG
DROP TABLE NHANVIEN
DROP TABLE KHACHHANG
DROP TABLE MATHANG
DROP TABLE NHACUNGCAP
DROP TABLE LOAIHANG

--------------------------CREATE TABLE--------------------------

-----LOAIHANG
INSERT INTO LOAIHANG(maloaihang, tenloaihang)
VALUES(1,N'Bàn ghế'),(2,N'Gia dụng'), (3,N'Trang trí')

-----NHACUNGCAP
INSERT INTO NHACUNGCAP(manhacungcap, tennhacungcap, tengiaodich, diachi, dienthoai, fax, email)
VALUES('NCC001',N'Thành Long',N'TNHH Thành Long',N'45 Nguyễn Khắc Nhu, Cô Giang, Q1, HCM','0919580666','08230123456','thanhlong@gmail.com'),
('NCC002',N'Đại Việt',N'TNHH Đại Việt',N'50 Lê Văn Sỹ, Q10, HCM','0919580888','08230123466','daiviet@gmail.com'),
('NCC003',N'Hoàng Long',N'TNHH Hoàng Long',N'345 Phan Văn Trị, Gò Vấp, HCM','0919580111','08230123456','hoanglong@gmail.com'),
('NCC004',N'Gia Phát',N'TNHH Gia Phát',N'15 Nguyễn Chí Thanh, Q10, HCM','0919580777','08230123333','giaphat@gmail.com'),
('NCC005',N'Nguyễn Kim',N'TNHH Nguyễn Kim',N'35 Đào Duy Từ, Q3, HCM','0919580222','08230123444','nguyenkim@gmail.com')

-----MATHANG
INSERT INTO MATHANG(mahang, tenhang, manhacungcap, maloaihang, soluong, donvitinh, giahang)
VALUES('M001',N'Bàn máy tính','NCC001',1,100,N'Cái',5000000),
('M002',N'Bàn ủi','NCC001',2,500,N'Cái',1000000),
('M003',N'Tranh treo tường','NCC001',3,150,N'Cái',500000),
('M004',N'Máy sấy tóc','NCC002',1,200,N'Cái',3000000),
('M005',N'Nồi cơm điện','NCC002',2,100,N'Cái',5000000),
('M006',N'Quạt máy để bàn','NCC001',1,100,N'Cái',1000000),
('M007',N'Lò vi sóng','NCC003',1,100,N'Cái',5000000),
('M008',N'Máy phun sương','NCC003',2,100,N'Cái',3000000)

-----KHACHHANG
INSERT INTO KHACHHANG(makhachhang, tenkhachhang, tengiaodich, diachi, email, dienthoai, fax)
VALUES('KH0001',N'An Long',N'Công ty TMCP An Long',N'65 Thống Nhất, Gò Vấp, HCM','anlong@gmail.com','0238973455','02834940595'),
('KH0002',N'Phong Vũ',N'Công ty TMCP Phong Vũ',N'650 Hoàng Văn Thụ, Tân Bình, HCM','phongvu@gmail.com','0238973411','02837484755'),
('KH0003',N'Thanh Bình',N'Công ty TMCP Thanh Bình',N'125 Nam Kỳ Khởi Nghĩa, Q1, HCM','thanhbinh@gmail.com','0238973422','9273749482'),
('KH0004',N'Gia Phát',N'TNHH Gia Phát',N'234 Lê Lợi, Q1, HCM','binhtay@gmail.com','0238973455','02838273488'),
('KH0005',N'Mai Thanh',N'Công ty TMCP Mai Thanh',N'32 Nguyễn Văn Nghi, Gò Vấp, HCM','maithanh@gmail.com','0238973209','2930387484')


-----NHANVIEN
INSERT INTO NHANVIEN(manhanvien, ho, ten, ngaysinh, ngaylamviec, diachi, dienthoai, luongcoban, phucap)
VALUES('NV001',N'Lý Thị Huyền', N'Châu','1989-3-3','2000-1-1',N'56 Trần Hưng Đạo, Q5, HCM','0945312788',20000000,1000000),
('NV002',N'Nguyễn Thanh', N'Huy','1990-12-3','2001-2-1',N'526 Nguyễn Kiệm, Gò Vấp, HCM','0945312711',1500000,3000000),
('NV003',N'Phạm Minh', N'Huyên','1989-3-3','2005-7-1',N'88 Cộng Hòa, Tân Bình, HCM','0945312722',10000000,1000000),
('NV004',N'Trương Thế', N'Vinh','1972-3-30','2007-11-8',N'56/3/2 Lý Thường Kiệt, Tân Bình, HCM','0945312328',18000000,1000000),
('NV005',N'Nguyễn Văn', N'Lộc','1985-2-5','2025-1-1',N'2/3 Đường 3/2, Q10, HCM','0943412788',19000000,5000000)

-----DONDATHANG
INSERT INTO DONDATHANG(sohoadon, makhachhang, manhanvien, ngaydathang, ngaygiaohang, ngaychuyenhang, noigiaohang)
VALUES('1','KH0001','NV001','2025-7-9','2025-7-30','2025-7-25',N'65 Thống Nhất, Gò Vấp, HCM'),
('2','KH0002','NV001','2025-8-12','2025-9-5','2025-7-25',N'650 Hoàng Văn Thụ, Tân Bình, HCM'),
('3','KH0003','NV002','2025-11-9','2025-12-9','2025-11-25',N'125 Nam Kỳ Khởi Nghĩa, Q1, HCM'),
('4','KH0004','NV004','2025-11-20','2025-12-30','2025-12-15',N'234 Lê Lợi, Q1, HCM'),
('5','KH0004','NV004','2025-11-22','2025-12-30','2025-12-15',N'4 Hai Bà Trưng, Q1, HCM')



-----CHITIETDATHANG
INSERT INTO CHITIETDATHANG(sohoadon, mahang, giaban, soluong, mucgiamgia)
VALUES('1','M001',5000000,2,15),
('2','M001',5000000,1,10),
('2','M002',1000000,2,5),
('3','M005',5000000,1,15),
('3','M006',1000000,1,5),
('3','M002',1000000,2,5),
('3','M001',5000000,1,5),
('3','M003',500000,2,0),
('3','M004',3000000,1,10),
('6','M001',5000000,1,10),
('6','M002',5000000,1,10),
('6','M005',1000000,1,5)

INSERT INTO DIEUKIENNHAPHANG(mahang, mahang_truoc)
VALUES('M002','M001'),
('M003','M001'),
('M004','M003'),
('M005','M001'),
('M006','M003'),
('M008','M006')


----SELECT
SELECT * FROM LOAIHANG
SELECT * FROM NHACUNGCAP
SELECT * FROM MATHANG
SELECT * FROM KHACHHANG
SELECT * FROM NHANVIEN
SELECT * FROM DONDATHANG
SELECT * FROM CHITIETDATHANG
SELECT * FROM DIEUKIENNHAPHANG
-------------------------------------------------------------------------------------------
--Ví dụ 1: Hãy cho biết số hoá đơn, mã hàng, tên hàng, giá bán, số lượng của những mặt hàng đã từng được đặt hàng.
SELECT C.SOHOADON, M.MAHANG, M.TENHANG, C.GIABAN, C.SOLUONG
FROM MATHANG M INNER JOIN CHITIETDATHANG C
ON M.MAHANG = C.MAHANG

--Ví dụ 2: Hãy hiển thị mã hàng, tên hàng, tên loại hàng, giá hàng của tất cả mặt hàng và chỉ lọc ra những mặt hàng có Giá hàng (GIAHANG) lớn hơn 500,000 
--và kết quả xuất ra phải được sắp xếp theo Số lượng (SOLUONG) giảm dần.
SELECT M.MAHANG, M.TENHANG, L.TENLOAIHANG, M.GIAHANG
FROM MATHANG M INNER JOIN LOAIHANG L
ON M.MALOAIHANG = L.MALOAIHANG AND M.GIAHANG > 500000
ORDER BY M.SOLUONG DESC

--Ví dụ 3: Hãy hiển thị danh sách gồm: Số hóa đơn (SOHOADON), Ngày đặt hàng (NGAYDATHANG), và Tên khách hàng (TENKHACHHANG) của khách hàng mua hàng 
--và chỉ lấy các hóa đơn được đặt trong năm 2025 và tên khách hàng trong tên có ký tự “a”.
SELECT D.SOHOADON, D.NGAYDATHANG, K.TENKHACHHANG
FROM DONDATHANG D INNER JOIN KHACHHANG K
ON D.MAKHACHHANG = K.MAKHACHHANG
WHERE YEAR(D.NGAYDATHANG) = 2025 AND K.TENKHACHHANG LIKE '%a%'
GROUP BY D.SOHOADON, D.NGAYDATHANG, K.TENKHACHHANG

--Ví dụ 4: Hãy hiển thị danh sách các mặt hàng đã được khách đặt mua với các thông tin: Mã hàng (MAHANG), Tên hàng (TENHANG), Số hóa đơn (SOHOADON), Ngày đặt hàng (NGAYDATHANG) và
--Số lượng mua (SOLUONG) trong chi tiết đơn hàng và chỉ hiển thị những hóa đơn được đặt trong tháng 11 năm 2025 và số lượng đặt của mặt hàng đó trong đơn phải từ 2 sản phẩm trở lên.
SELECT CTDH.MAHANG, M.TENHANG, CTDH.SOHOADON, D.NGAYDATHANG, CTDH.SOLUONG
FROM DONDATHANG D
INNER JOIN CHITIETDATHANG CTDH ON D.SOHOADON = CTDH.SOHOADON
INNER JOIN  MATHANG M ON CTDH.MAHANG = M.MAHANG
WHERE MONTH(NGAYDATHANG) = 11 AND YEAR(NGAYDATHANG) = 2025 AND CTDH.SOLUONG >= 2