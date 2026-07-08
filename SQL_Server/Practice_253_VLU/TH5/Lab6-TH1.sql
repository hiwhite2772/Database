/******************************CREATE DATABASE********************************/
create database QUANLYHOCTAP_B6_2574802010111
GO 
USE QUANLYHOCTAP_B6_2574802010111

/************************TAO BANG KHOA QUAN LY SINH VIEN*************************/
CREATE TABLE KHOA(MAKHOA VARCHAR(4) NOT NULL ,
			TENKHOA NVARCHAR(50) NOT NULL,
			      NAMTHANHLAP INT NOT NULL)

/************************TAO BANG SVIEN QUAN LY SINH VIEN*************************/
CREATE TABLE SVIEN(TEN NVARCHAR(50) NOT NULL,
			MASV INT NOT NULL,
				NGAYSINH DATE,
					GIOITINH BIT,
						NAM INT NOT NULL,
							MAKH VARCHAR(4) NOT NULL)

/*************************KHOA CHINH **********************************/
ALTER TABLE SVIEN
		ADD CONSTRAINT PK_SVIEN 
			PRIMARY KEY (MASV)
ALTER TABLE KHOA
		ADD CONSTRAINT PK_KHOA 
			PRIMARY KEY (MAKHOA)

/***************************KHOA NGOAI***************************/
ALTER TABLE SVIEN 
		ADD CONSTRAINT FK_SVIEN_MAKH FOREIGN KEY (MAKH)
			REFERENCES KHOA (MAKHOA)

/****************************XOA KHOA NGOAI******************************/
ALTER TABLE  SVIEN
		DROP CONSTRAINT FK_SVIEN_MAKH 

/****************************XOA KHOA CHINH *******************************/
ALTER TABLE  SVIEN
		DROP CONSTRAINT PK_SVIEN 

ALTER TABLE  KHOA
		DROP CONSTRAINT PK_KHOA 

/***********************XOA DU LIEU CUA BANG******************************/
delete SVIEN
delete KHOA

/***********************XOA BANG******************************/
drop table SVIEN
drop table KHOA

/*******************XOA DATABASE*********************/
drop database QUANLYHOCTAP_B6_2574802010111

/**********************************USE DATABASE********************************/
--Bảng KHOA
INSERT INTO KHOA VALUES ('KHMT', N'Khoa học Máy tính', 1995)
INSERT INTO KHOA VALUES ('HTTT', N'Hệ thống Thông tin', 1996)
INSERT INTO KHOA VALUES ('ANM', N'An toàn Thông tin', 1997)
INSERT INTO KHOA VALUES ('VLLT', N'Vật lý Lý thuyết', 1998)
INSERT INTO KHOA VALUES ('TUD', N'Toán Ứng dụng', 1999)
INSERT INTO KHOA VALUES ('CNTT', N'Công nghệ Thông tin', 1995)
INSERT INTO KHOA VALUES ('TOAN', N'Toán học', 1995)
INSERT INTO KHOA VALUES ('VL', N'Vật lý', 1995)

--Bảng SVIEN
INSERT INTO SVIEN VALUES (N'Lý Thái Tổ',19,'2000-01-15',1,1,'CNTT')
INSERT INTO SVIEN VALUES (N'Lý Nhân Tông',20,'2000-05-20',1,1,'TOAN')
INSERT INTO SVIEN VALUES (N'Lý Anh Tông',21,'2000-11-12',1,1,'VL')
INSERT INTO SVIEN VALUES (N'Lý Cao Tông',22,'2001-02-25',1,2,'KHMT')
INSERT INTO SVIEN VALUES (N'Lý Huệ Tông',23,'2001-06-18',1,2,'HTTT')
INSERT INTO SVIEN VALUES (N'Lý Chiêu Hoàng',24,'2001-10-05',0,2,'ANM')
INSERT INTO SVIEN VALUES (N'Lý Tự Trọng',25,'2002-03-14',1,3,'VLLT')
INSERT INTO SVIEN VALUES (N'Lý Đạo Thành',26,'2002-07-22',1,3,'TUD')
INSERT INTO SVIEN VALUES (N'Lý Thường Kiệt',27,'2002-09-09',1,3,'CNTT')
INSERT INTO SVIEN VALUES (N'Lý Tiến',28,'2003-01-30',1,4,'TOAN')
INSERT INTO SVIEN VALUES (N'Lý Văn Phức',29,'2003-04-12',1,4,'VL')
INSERT INTO SVIEN VALUES (N'Lý Tế Xuyên',30,'2003-08-27',1,4,'KHMT')
INSERT INTO SVIEN VALUES (N'Lý Thanh Sử',31,'2004-02-11',1,4,'HTTT')
INSERT INTO SVIEN VALUES (N'Lý Minh',32,'2004-06-03',1,1,'ANM')
INSERT INTO SVIEN VALUES (N'Lý Hùng',33,'2004-12-25',1,1,'VLLT')
INSERT INTO SVIEN VALUES (N'Lý Hải',34,'2000-02-28',1,1,'TUD')
INSERT INTO SVIEN VALUES (N'Lý Nhã Kỳ',35,'2000-08-14',0,2,'CNTT')
INSERT INTO SVIEN VALUES (N'Lý Giai Hân',36,'2001-04-19',0,2,'TOAN')
INSERT INTO SVIEN VALUES (N'Lý Liên Kiệt',37,'2001-09-23',1,2,'VL')
INSERT INTO SVIEN VALUES (N'Lý tiểu Long',38,'2001-12-30',1,3,'KHMT')
INSERT INTO SVIEN VALUES (N'Lý Tử Thất',39,'2002-05-15',0,3,'HTTT')
INSERT INTO SVIEN VALUES (N'Lý Khắc Cần',40,'2002-10-20',1,3,'ANM')
INSERT INTO SVIEN VALUES (N'Lý Dịch Phong',41,'2003-03-07',1,4,'VLLT')
INSERT INTO SVIEN VALUES (N'Lý Hiện',42,'2003-07-16',1,4,'TUD')
INSERT INTO SVIEN VALUES (N'Lý Thấm',43,'2003-11-22',0,4,'CNTT')
INSERT INTO SVIEN VALUES (N'Lý Thuần',44,'2004-01-09',0,1,'TOAN')
INSERT INTO SVIEN VALUES (N'Lý Đông Học',45,'2004-04-14',1,1,'VL')
INSERT INTO SVIEN VALUES (N'Lý Trị Đình',46,'2004-08-18',1,2,'KHMT')
INSERT INTO SVIEN VALUES (N'Lý Quế Phước',47,'2000-07-07',1,2,'HTTT')
INSERT INTO SVIEN VALUES (N'Lý Hoàng Nam',48,'2002-12-12',1,3,'ANM')

/****************************HAM XUAT*********************************/
SELECT * FROM KHOA 
SELECT * FROM SVIEN 

/****************************TRUY VAN DU LIEU************************/
-- SELECT: LIỆT KÊ CÁC CỘT CÓ TRONG KẾT QUẢ
SELECT MASV [MA SV], NGAYSINH [NS] FROM SVIEN
SELECT * FROM SVIEN

SELECT K.TENKHOA, S.TEN INTO DANHSACH 
FROM SVIEN S, KHOA K WHERE S.MAKH = K.MAKHOA
SELECT *FROM DANHSACH

select top 3 ten, ngaysinh from svien
select top 10 percent ten, ngaysinh from svien

select ten, tenkhoa from svien, khoa

select s.ten, k.tenkhoa from svien s, khoa k

select s.masv, s.ten, s.ngaysinh, k.tenkhoa from svien s, khoa k
where s.makh = k.makhoa and k.tenkhoa = N'Công nghệ thông tin'

select * from svien where ten like N'%Tiểu%' Collate SQL_Latin1_General_CP1_CI_AS