/******************************CREATE DATABASE********************************/
CREATE DATABASE QUANLYSINHVIEN_B6_2574802010111
GO 
USE QUANLYSINHVIEN_B6_2574802010111

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

/************************TAO BANG DKIEN QUAN LY SINH VIEN*************************/
CREATE TABLE DKIEN(MAMH VARCHAR(8) NOT NULL,
			MAMH_TRUOC VARCHAR(8) NOT NULL)

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
			      DIEM FLOAT NOT NULL)

/*************************KHOA CHINH **********************************/
ALTER TABLE SVIEN
		ADD CONSTRAINT PK_SVIEN 
			PRIMARY KEY (MASV)
ALTER TABLE KHOA
		ADD CONSTRAINT PK_KHOA 
			PRIMARY KEY (MAKHOA)
ALTER TABLE MHOC
		ADD CONSTRAINT PK_MHOC 
			PRIMARY KEY (MAMH)
ALTER TABLE HPHAN
		ADD CONSTRAINT PK_HPHAN 
			PRIMARY KEY (MAHP)
ALTER TABLE KQUA
		ADD CONSTRAINT PK_KQUA 
			PRIMARY KEY (MASV,MAHP)
ALTER TABLE DKIEN
		ADD CONSTRAINT PK_DKIEN 
			PRIMARY KEY (MAMH,MAMH_TRUOC)

/***************************KHOA NGOAI***************************/
ALTER TABLE SVIEN 
		ADD CONSTRAINT FK_SVIEN_MAKH FOREIGN KEY (MAKH)
			REFERENCES KHOA (MAKHOA)
ALTER TABLE MHOC 
		ADD CONSTRAINT FK_MHOC_MAKH FOREIGN KEY (MAKH)
			REFERENCES KHOA (MAKHOA)
ALTER TABLE HPHAN 
		ADD CONSTRAINT FK_HPHAN_MAMH FOREIGN KEY (MAMH)
			REFERENCES MHOC (MAMH)
ALTER TABLE DKIEN 
		ADD CONSTRAINT FK_DKIEN_MAMH FOREIGN KEY (MAMH)
			REFERENCES MHOC (MAMH)
ALTER TABLE DKIEN 
		ADD CONSTRAINT FK_DKIEN_MAMH_TRUOC FOREIGN KEY (MAMH_TRUOC)
			REFERENCES MHOC (MAMH)
ALTER TABLE KQUA 
		ADD CONSTRAINT FK_KQUA_MASV FOREIGN KEY (MASV)
			REFERENCES SVIEN (MASV)
ALTER TABLE KQUA 
		ADD CONSTRAINT FK_KQUA_MAHP FOREIGN KEY (MAHP)
			REFERENCES HPHAN (MAHP)

/****************************XOA KHOA NGOAI******************************/
ALTER TABLE  KQUA
		DROP CONSTRAINT FK_KQUA_MASV 

ALTER TABLE  KQUA
		DROP CONSTRAINT FK_KQUA_MAHP 
			         
ALTER TABLE  DKIEN
		DROP CONSTRAINT FK_DKIEN_MAMH 

ALTER TABLE  DKIEN
		DROP CONSTRAINT FK_DKIEN_MAMH_TRUOC 

/****************************XOA KHOA CHINH *******************************/

ALTER TABLE  SVIEN
		DROP CONSTRAINT PK_SVIEN 

ALTER TABLE  KHOA
		DROP CONSTRAINT PK_KHOA 

ALTER TABLE  MHOC
		DROP CONSTRAINT PK_MHOC 

ALTER TABLE  HPHAN
		DROP CONSTRAINT PK_HPHAN 

/***********************XOA DU LIEU CUA BANG******************************/
delete KQUA
delete HPHAN
delete DKIEN
delete MHOC
delete SVIEN
delete KHOA

/***********************XOA BANG******************************/
drop table KQUA
drop table HPHAN
drop table DKIEN
drop table MHOC
drop table SVIEN
drop table KHOA

/*******************XOA DATABASE*********************/
drop database QUANLYSINHVIEN_B6_2574802010111

/**********************************USE DATABASE********************************/
-- 1. BẢNG KHOA
INSERT INTO KHOA (MAKHOA, TENKHOA, NAMTHANHLAP) VALUES ('CNTT', N'Công Nghệ Thông Tin', 1995)
INSERT INTO KHOA (MAKHOA, TENKHOA, NAMTHANHLAP) VALUES ('VL', N'Vật lý', 1999)
INSERT INTO KHOA (MAKHOA, TENKHOA, NAMTHANHLAP) VALUES ('TOAN', N'Toán', 1999)

-- 2. BẢNG MHOC (MÔN HỌC)
INSERT INTO MHOC (TENMH, MAMH, TINCHI, MAKH) VALUES (N'Nhập môn Tin học', 'NMTH', 4, 'CNTT')
INSERT INTO MHOC (TENMH, MAMH, TINCHI, MAKH) VALUES (N'Cấu trúc dữ liệu', 'CTDL', 4, 'CNTT')
INSERT INTO MHOC (TENMH, MAMH, TINCHI, MAKH) VALUES (N'Toán rời rạc', 'TRR', 3, 'TOAN')
INSERT INTO MHOC (TENMH, MAMH, TINCHI, MAKH) VALUES (N'Cơ sở dữ liệu', 'CSDL', 3, 'CNTT')
INSERT INTO MHOC (TENMH, MAMH, TINCHI, MAKH) VALUES (N'Vật lý đại cương', 'VLDC', 3, 'VL')

-- 3. BẢNG SVIEN (SINH VIÊN)
INSERT INTO SVIEN (TEN, MASV, NAM, MAKH) VALUES (N'Nguyễn Hoàng Sơn', 17, 1, 'CNTT')
INSERT INTO SVIEN (TEN, MASV, NAM, MAKH) VALUES (N'Trần Gia Bảo', 8, 2, 'CNTT')
INSERT INTO SVIEN (TEN, MASV, NAM, MAKH) VALUES (N'Lê Huyền Trang', 5, 3, 'TOAN')
INSERT INTO SVIEN (TEN, MASV, NAM, MAKH) VALUES (N'Đặng Diễm Quỳnh', 23, 2, 'VL')
INSERT INTO SVIEN (TEN, MASV, NAM, MAKH) VALUES (N'Phạm Minh Khôi', 12, 1, 'CNTT')

-- 4. BẢNG DKIEN (ĐIỀU KIỆN)
INSERT INTO DKIEN (MAMH, MAMH_TRUOC) VALUES ('CSDL', 'CTDL')
INSERT INTO DKIEN (MAMH, MAMH_TRUOC) VALUES ('CSDL', 'TRR')
INSERT INTO DKIEN (MAMH, MAMH_TRUOC) VALUES ('CTDL', 'NMTH')

-- 5. BẢNG HPHAN (HỌC PHẦN)
INSERT INTO HPHAN (MAHP, MAMH, HOCKY, NAM, GV) VALUES (85, 'TRR', 1, 2025, N'Lê Thị Kim')
INSERT INTO HPHAN (MAHP, MAMH, HOCKY, NAM, GV) VALUES (92, 'NMTH', 1, 2025, N'Nguyễn Thúy An')
INSERT INTO HPHAN (MAHP, MAMH, HOCKY, NAM, GV) VALUES (102, 'CTDL', 2, 2026, N'Trần An Nhiên')
INSERT INTO HPHAN (MAHP, MAMH, HOCKY, NAM, GV) VALUES (112, 'TRR', 2, 2026, N'Phạm Thúy Vân')
INSERT INTO HPHAN (MAHP, MAMH, HOCKY, NAM, GV) VALUES (119, 'NMTH', 2, 2026, N'Nguyễn Thúy An')
INSERT INTO HPHAN (MAHP, MAMH, HOCKY, NAM, GV) VALUES (135, 'CSDL', 2, 2026, N'Hoàng Minh Sơn')

-- 6. BẢNG KQUA (KẾT QUẢ)
INSERT INTO KQUA (MASV, MAHP, DIEM) VALUES (17, 102, 8)
INSERT INTO KQUA (MASV, MAHP, DIEM) VALUES (17, 119, 6)
INSERT INTO KQUA (MASV, MAHP, DIEM) VALUES (8, 92, 10)
INSERT INTO KQUA (MASV, MAHP, DIEM) VALUES (8, 102, 8)
INSERT INTO KQUA (MASV, MAHP, DIEM) VALUES (8, 135, 10)
INSERT INTO KQUA (MASV, MAHP, DIEM) VALUES (5, 85, 10)
INSERT INTO KQUA (MASV, MAHP, DIEM) VALUES (23, 85, 9)
INSERT INTO KQUA (MASV, MAHP, DIEM) VALUES (23, 112, 7)
INSERT INTO KQUA (MASV, MAHP, DIEM) VALUES (12, 92, 8)
INSERT INTO KQUA (MASV, MAHP, DIEM) VALUES (12, 119, 7)

/****************************HAM XUAT*********************************/
SELECT * FROM SVIEN 
SELECT * FROM DKIEN
SELECT * FROM KHOA 
SELECT * FROM MHOC 
SELECT * FROM HPHAN 
SELECT * FROM KQUA 

/****************************TRUY VAN DU LIEU************************/
--1. Hãy cho biết Tên và Mã khoa của các môn học.
select mh.tenmh, mh.makh from mhoc mh

--2. Hãy cho biết mã sinh viên, tên sinh viên của những sinh viên có mã sinh viên từ 5 đến 15.
select masv, ten from svien where masv between 5 and 15

--3. Hãy cho biết mã môn học, học kỳ, năm học của những học phần không được giảng dạy bởi các giảng viên “Lê Thị Kim”, “Nguyễn Thúy An”, “Trần An Nhiên”.
select mamh, hocky, nam from hphan where GV not in (N'Lê Thị Kim', N'Nguyễn Thúy An', N'Trần An Nhiên')

--4. Hãy cho biết mã sinh viên, tên sinh viên của những sinh viên mà trong tên có ký tự tận cùng là “n”.
select masv, ten from svien where ten like '%n'

--5. Hãy cho biết mã sinh viên, tên sinh viên của những sinh viên mà trong tên có ký tự là “u”.
select masv, ten from svien where ten like '%u%'

--6. Hãy cho biết Tên những sinh viên đã đăng ký học với kết quả điểm số từ 8 điểm trở lên (lưu ý kết quả không trùng).
select distinct s.ten from svien s, kqua kq where s.masv = kq.masv and kq.diem  >= 8

--7. Hãy cho biết Tên giảng viên dạy môn “Cấu trúc dữ liệu”.
select hp.gv from hphan hp where hp.mamh = 'CTDL'
