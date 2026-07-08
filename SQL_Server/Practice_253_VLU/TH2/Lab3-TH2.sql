/******************************CREATE DATABASE********************************/

create database QUANLYHOCTAP_B3_2574802010111
GO 
USE QUANLYHOCTAP_B3_2574802010111

/************************TAO BANG KHOA QUAN LY SINH VIEN*************************/
CREATE TABLE KHOA(MAKHOA VARCHAR(5) NOT NULL ,
			TENKHOA NVARCHAR(30) NOT NULL,
			      NAMTHANHLAP INT NOT NULL) 

/************************TAO BANG SVIEN QUAN LY SINH VIEN*************************/
CREATE TABLE SVIEN(TEN NVARCHAR(30) NOT NULL,
			MASV INT NOT NULL,
				NGAYSINH DATE,
					GIOITINH BIT,
						NAM INT,
							MAKH VARCHAR(5) NULL,
								DIENTHOAI VARCHAR(8))

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
			
/***************************ALTER******************************/
--1. Thêm một ràng buộc thiết lập giá trị mặc định là 1995 cho cột NAMTHANHLAP (Năm thành lập) của bảng KHOA.
ALTER TABLE KHOA ADD CONSTRAINT DF_KHOA_NAMTHANHLAP DEFAULT 1995 FOR NAMTHANHLAP

--2. Thêm một ràng buộc thiết lập giá trị mặc định là 1 cho cột NAM (Năm thứ) của bảng SVIEN.
ALTER TABLE SVIEN ADD CONSTRAINT DF_SVIEN_NAM DEFAULT 1 FOR NAM

--3. Thêm một ràng buộc kiểm tra tuổi của sinh viên phải từ 18 đến 24.
ALTER TABLE SVIEN ADD CONSTRAINT CK_SVIEN_TUOI CHECK (DATEDIFF(YEAR, NGAYSINH, GETDATE()) BETWEEN 18 AND 24)

--4. Thêm một ràng buộc kiểm tra MAKHOA của bảng KHOA phải có 1 ký tự bắt đầu là ‘K’.
ALTER TABLE KHOA ADD CONSTRAINT CK_KHOA_MAKHOA CHECK (MAKHOA LIKE 'K%')

--5. Thêm một ràng buộc kiểm tra GIOITINH của sinh viên phải là một trong các ký tự (‘Nam’, ‘Nữ’).
ALTER TABLE SVIEN ADD CONSTRAINT CK_SVIEN_GIOITINH CHECK (GIOITINH IN (0, 1))

--6. Thêm một ràng buộc kiểm tra DIENTHOAI của sinh viên phải là số có 8 con số (tức là 8 số đều là con số tự nhiên, mỗi số từ 0 -> 9).
ALTER TABLE SVIEN ADD CONSTRAINT CK_SVIEN_DIENTHOAI CHECK (DIENTHOAI LIKE '[0-9],[0-9],[0-9],[0-9],[0-9],[0-9],[0-9],[0-9]')