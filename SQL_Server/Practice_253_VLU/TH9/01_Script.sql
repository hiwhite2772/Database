CREATE DATABASE QUANLYHOCTAP_DE01_2574802010111
GO
USE QUANLYHOCTAP_DE01_2574802010111

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
	DCHI NVARCHAR(100) NULL,
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
------------KHOA CHINH------------
ALTER TABLE HOCVIEN
ADD CONSTRAINT PK_HOCVIEN
PRIMARY KEY (MAHV)

ALTER TABLE GIAOVIEN
ADD CONSTRAINT PK_GIAOVIEN
PRIMARY KEY (MAGV)

ALTER TABLE BIENLAI
ADD CONSTRAINT PK_BIENLAI
PRIMARY KEY (SOBL)

------------KHOA NGOAI------------
ALTER TABLE LOPHOC
ADD CONSTRAINT FK_LOPHOC_MAGV
FOREIGN KEY (MAGV) REFERENCES GIAOVIEN(MAGV),
CONSTRAINT FK_LOPHOC_LTRG
FOREIGN KEY (LTRG) REFERENCES HOCVIEN(MAHV)

ALTER TABLE BIENLAI
ADD CONSTRAINT FK_BIENLAI_MAKH
FOREIGN KEY (MAKH) REFERENCES KHOAHOC(MAKH),
CONSTRAINT FK_BIENLAI_MALH
FOREIGN KEY (MALH) REFERENCES LOPHOC(MALOP),
CONSTRAINT FK_BIENLAI_MAHV
FOREIGN KEY (MAHV) REFERENCES HOCVIEN(MAHV)

-- =========================================================================

INSERT INTO dbo.KHOAHOC ([MAKH], [TENKH], [BD], [KT]) VALUES ('PT125', N'Tiếng Pháp Phổ Thông Khóa 1/25', '2025-02-15 00:00:00', '2025-05-15 00:00:00');
INSERT INTO dbo.KHOAHOC ([MAKH], [TENKH], [BD], [KT]) VALUES ('PT226', N'Tiếng Pháp Phổ Thông Khóa 2/26', '2026-05-30 00:00:00', '2026-08-30 00:00:00');
INSERT INTO dbo.KHOAHOC ([MAKH], [TENKH], [BD], [KT]) VALUES ('CT226', N'Tiếng Pháp Chuyên Tự Khóa 2/26', '2026-05-30 00:00:00', '2026-08-30 00:00:00');


-- =========================================================================

INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (0, N'Hồ Thanh', N'Sơn', '2002-01-01 00:00:00', '209 Tran Hung Dao Q5', N'Bác sĩ');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (1, N'Trần Tam', N'Thành', '2003-03-04 00:00:00', '109/2 CMTT F10 QTB', N'Giáo viên');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (2, N'Đỗ Nghiêm', N'Phụng', '2006-01-12 00:00:00', '34 Do Duy Duong Q5', N'Học sinh');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (3, N'Trần Nam', N'Sơn', '2005-08-03 00:00:00', '190/2A Ho Tung Mau Q1', N'Học sinh');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (4, N'Nguyễn Tiến', N'Dũng', '2004-03-04 00:00:00', '23/8 Thai Van Lung Q1', N'Giáo viên');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (5, N'Mai Thanh', N'Nam', '2002-08-02 00:00:00', '12 DBP Q1', N'Công nhân');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (6, N'Trần Doãn', N'Hùng', '2003-01-19 00:00:00', '189 Tran Van Bo Q4', N'Giáo viên');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (7, N'Nguyễn Mạnh', N'Hùng', '2004-01-29 00:00:00', '68 Nguyen Thien Thuat Q3', N'Diễn viên');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (8, N'Trần Văn', N'Tiến', '2006-02-03 00:00:00', '18 Le Duan Q1', N'Thợ may');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (9, N'Nguyễn Thị Khánh', N'Vân', '2002-04-03 00:00:00', '48/3 Ho Tung Mau Q1', N'Nội trợ');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (10, N'Trần Đình Lê', N'Hương', '2005-03-07 00:00:00', '44A Cu xa Tu Do F4 QTB', N'Người mẫu');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (11, N'Lê Thị Gia', N'Trân', '2003-03-19 00:00:00', '34 Ly Thuong Kiet QTB', N'Giáo viên');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (12, N'Nguyễn Thị Kim', N'Cường', '2004-05-28 00:00:00', '356/2F Ly Thuong Kiet QTB', N'Thợ may');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (13, N'Nguyễn Thị Tuyết', N'Anh', '2002-04-02 00:00:00', '789 Phan Dang Luu QBT', N'Bán hàng');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (15, N'Nguyễn Thị Hồng', N'Loan', '2005-03-06 00:00:00', '567/23 XVNT P25 QBT', N'Người mẫu');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (16, N'Nguyễn Thị Kim', N'Thoa', '2006-02-20 00:00:00', '34 Thala Tan Bien Tay Ninh', N'Bán hàng');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (17, N'Nguyễn Thị Kim', N'Mai', '2004-02-07 00:00:00', '78 XVNT QBT', N'Thợ may');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (19, N'Nguyễn Tường', N'Lan', '2006-09-30 00:00:00', '456 CNTT F13 QTB', N'Sinh viên');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (20, N'Nguyễn Thị Ngọc', N'Mai', '2003-12-12 00:00:00', '124 Nguyen Duy Duong Q5', N'Bán hàng');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (21, N'Trần Thị Khánh', N'Tường', '2005-03-02 00:00:00', '24 Ly thuong Kiet QTB', N'Bác sĩ');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (22, N'Nguyễn Hà', N'Thảo', '2004-03-19 00:00:00', '56 Bui Dinh Tuy QTB', N'Kỹ sư');
INSERT INTO dbo.HOCVIEN ([MAHV], [HO], [TEN], [NTNS], [DCHI], [NNGHIEP]) VALUES (23, N'Nguyễn Thị Kim', N'Ngân', '2003-03-04 00:00:00', '178 Vo T. Trang F11 QTB', N'Thợ uốn tóc');

-- =========================================================================

INSERT INTO dbo.GIAOVIEN ([MAGV], [HOTEN], [NTNS], [DC]) VALUES (1, N'Trần Thanh', '1990-01-02 00:00:00', '12-4 Tran B.Trong Q1');
INSERT INTO dbo.GIAOVIEN ([MAGV], [HOTEN], [NTNS], [DC]) VALUES (2, N'Nguyễn Nam', '1993-02-04 00:00:00', '30 Dien Bien Phu Q1');
INSERT INTO dbo.GIAOVIEN ([MAGV], [HOTEN], [NTNS], [DC]) VALUES (3, N'Hồ Nhân', '1995-03-04 00:00:00', '123 Ho Quy Cap Q1');
INSERT INTO dbo.GIAOVIEN ([MAGV], [HOTEN], [NTNS], [DC]) VALUES (4, N'Dương Hùng', '1991-03-03 00:00:00', '23 Hai Ba Trung');
INSERT INTO dbo.GIAOVIEN ([MAGV], [HOTEN], [NTNS], [DC]) VALUES (5, N'Lê Thương', '2000-05-07 00:00:00', '61/4 Huynh Man Dat');


-- =========================================================================

INSERT INTO dbo.LOPHOC ([MALOP], [TENLOP], [MAKH], [MAGV], [SISODK], [LTRG], [PHHOC]) VALUES (1, N'Tiếng Pháp Phổ Thông 1.1', 'PT125', 1, 10, 9, 101);
INSERT INTO dbo.LOPHOC ([MALOP], [TENLOP], [MAKH], [MAGV], [SISODK], [LTRG], [PHHOC]) VALUES (2, N'Tiếng Pháp Phổ Thông 2.1', 'PT226', 2, 10, 6, 201);
INSERT INTO dbo.LOPHOC ([MALOP], [TENLOP], [MAKH], [MAGV], [SISODK], [LTRG], [PHHOC]) VALUES (3, N'Tiếng Pháp Phổ Thông 1.2', 'PT226', 3, 20, 17, 202);
INSERT INTO dbo.LOPHOC ([MALOP], [TENLOP], [MAKH], [MAGV], [SISODK], [LTRG], [PHHOC]) VALUES (4, N'Tiếng Pháp Chuyên Tự A', 'CT226', 4, 15, null, 203);

-- =========================================================================

INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT125', 1, 1, 1, 8, N'ĐẬU', N'KHÁ', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT125', 1, 2, 2, 4, N'KHÔNG ĐẬU', N'YẾU', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT125', 1, 3, 3, 4, N'KHÔNG ĐẬU', N'YẾU', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT125', 1, 4, 4, 3, N'KHÔNG ĐẬU', N'YẾU', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT125', 1, 5, 5, 4, N'KHÔNG ĐẬU', N'YẾU', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT125', 1, 6, 6, 9, N'ĐẬU', N'GIỎI', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT125', 1, 7, 7, 6.5, N'ĐẬU', N'TB', null);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT125', 1, 8, 8, 5, N'ĐẬU', N'TB', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT125', 1, 9, 9, 7, N'ĐẬU', N'KHÁ', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT125', 1, 10, 10, 8, N'ĐẬU', N'KHÁ', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT125', 1, 11, 11, 6, N'ĐẬU', N'TB', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT125', 1, 12, 12, 9, N'ĐẬU', N'GIỎI', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT125', 1, 0, 34, 3, N'KHÔNG ĐẬU', N'YẾU', null);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT226', 2, 1, 13, 4, N'KHÔNG ĐẬU', N'YẾU', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT226', 2, 13, 14, 7, N'ĐẬU', N'GIỎI', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT226', 2, 3, 15, 2, N'KHÔNG ĐẬU', N'YẾU', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT226', 2, 15, 17, 6, N'ĐẬU', N'TB', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT226', 2, 6, 18, 9, N'ĐẬU', N'GIỎI', null);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT226', 2, 7, 19, 6.5, N'ĐẬU', N'TB', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT226', 2, 8, 20, 4.5, N'KHÔNG ĐẬU', N'YẾU', null);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT226', 2, 9, 21, 8, N'ĐẬU', N'KHÁ', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT226', 2, 10, 22, 9.5, N'ĐẬU', N'GIỎI', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT226', 2, 11, 23, 7, N'ĐẬU', N'KHÁ', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT226', 3, 16, 24, 5, N'ĐẬU', N'TB', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT226', 3, 17, 25, 9, N'ĐẬU', N'GIỎI', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT226', 3, 19, 27, 9, N'ĐẬU', N'GIỎI', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT226', 3, 20, 28, 5, N'ĐẬU', N'TB', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT226', 3, 21, 29, 3, N'KHÔNG ĐẬU', N'YẾU', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT226', 3, 22, 30, 6.5, N'ĐẬU', N'TB', 100000);
INSERT INTO dbo.BIENLAI ([MAKH], [MALH], [MAHV], [SOBL], [DIEM], [KQUA], [XEPLOAI], [TIENNOP]) VALUES ('PT226', 3, 23, 31, 7.5, N'ĐẬU', N'KHÁ', 100000);

------
SELECT * FROM KHOAHOC
SELECT * FROM HOCVIEN
SELECT * FROM GIAOVIEN
SELECT * FROM LOPHOC
SELECT * FROM BIENLAI

-------------ĐỀ BÀI------------

--CÂU 1: (2.0đ) Tạo các ràng buộc (dùng lệnh Alter để thực hiện các câu hỏi này):
-------------------------------
--1. Tạo 2 ràng buộc khóa chính PK_KHOAHOC trên bảng KHOAHOC (Khóa học) và
--PK_LOPHOC trên bảng LOPHOC (Lớp học). (0.5đ)
ALTER TABLE KHOAHOC
ADD CONSTRAINT PK_KHOAHOC
PRIMARY KEY (MAKH)

ALTER TABLE LOPHOC
ADD CONSTRAINT PK_LOPHOC
PRIMARY KEY (MALOP)

--2. Tạo 1 ràng buộc khóa ngoại FK_LOPHOC_ KHOAHOC cho cột MAKH trên bảng
--LOPHOC (Lớp học) tham chiếu đến cột MAKH của bảng KHOAHOC (Khóa học).
--(0.5đ)
ALTER TABLE LOPHOC
ADD CONSTRAINT FK_LOPHOC_MAKH
FOREIGN KEY (MAKH)
REFERENCES KHOAHOC(MAKH)

--3. Thay đổi định nghĩa của cột XEPLOAI (Xếp loại) trong bảng BIENLAI (Biên Lai) như sau:
--Column Name Data type Allow Nulls
--XEPLOAI nvarchar(50) Null
ALTER TABLE BIENLAI 
ALTER COLUMN XEPLOAI NVARCHAR(50) NULL

--4. Tạo 1 ràng buộc duy nhất trên cột TENLOP của bảng LOPHOC (Lớp Học) để đảm
--bảo rằng tên của mỗi lớp học phải là duy nhất không trùng. (0.5đ)
ALTER TABLE LOPHOC
ADD CONSTRAINT UQ_LOPHOC_TENLOP
UNIQUE (TENLOP)

-------------------------------
--CÂU 3: (6.0đ) Thực hiện các câu truy vấn (Insert, Update, Delete, Select)
-------------------------------
--1. Thêm dòng < 5, N'Tiếng Nhật 1.1', 'TN126', 4, 0, 10, 101 > vào bảng LOPHOC. (0.5đ)
INSERT INTO LOPHOC VALUES(5, N'Tiếng Nhật 1.1', 'TN126', 4, 0, 10, 101)

--2. Đổi giá trị tại thuộc tính SISODK thành 30 đối với các bộ trong quan hệ LOPHOC thỏa mãn MALOP=5. (0.5đ)
UPDATE LOPHOC SET SISODK = 30 WHERE MALOP = 5

--3. Xoá trong LOPHOC các bộ thỏa mãn MALOP=5. (0.5đ)
DELETE FROM LOPHOC WHERE MALOP = 5

--4. Hãy cho biết danh sách các nghề nghiệp khác nhau (không trùng lặp) của toàn bộ học viên trong trung tâm (0.5đ)
SELECT DISTINCT NNGHIEP FROM HOCVIEN

--5. Hãy cho biết thông tin của 3 học viên có điểm số cao nhất trong các kỳ thi (dựa trên biên lai). (0.5đ)
SELECT TOP 3 * FROM HOCVIEN HV 
INNER JOIN BIENLAI BL ON HV.MAHV = BL.MAHV
ORDER BY DIEM DESC

--6. Xuất danh sách thông tin học viên gồm: Mã học viên, Họ, Tên, Ngày tháng năm sinh.
--Kết quả được sắp xếp theo Tên tăng dần theo bảng chữ cái (0.5đ)
SELECT MAHV, HO, TEN, NTNS FROM HOCVIEN ORDER BY TEN

--7. Hiển thị danh sách các lớp học mà tên lớp có chứa từ 'Phổ Thông'. (0.5đ)
SELECT * FROM LOPHOC WHERE TENLOP LIKE N'%Phổ Thông%'

--8. Hãy cho biết các học viên có Họ là 'Nguyễn'. (0.5đ)
SELECT * FROM HOCVIEN WHERE HO LIKE N'Nguyễn%'

--9. Cho biết tên lớp học và số lượng học viên có kết quả học tập là 'KHÔNG ĐẬU' hoặc
--xếp loại là 'YẾU' của từng lớp học đó. (0.5đ)
SELECT L.TENLOP, COUNT(BL.MAHV) AS SoLuong
FROM LOPHOC L
JOIN BIENLAI BL ON L.MALOP = BL.MALH
WHERE BL.KQUA = N'KHÔNG ĐẬU' OR BL.XEPLOAI = N'YẾU'
GROUP BY L.TENLOP

--10. Hãy cho biết mã, họ tên, ngày tháng năm sinh của những giáo viên chưa từng dạy lớp nào. (0.5đ)
SELECT GV.MAGV, GV.HOTEN, GV.NTNS
FROM GIAOVIEN GV
LEFT JOIN LOPHOC L 
ON GV.MAGV = L.MAGV
WHERE L.MAGV IS NULL

--11. Hãy cho biết mã, họ và tên của những học viên lớn tuổi nhất. (0.5đ)
SELECT MAHV, HO, TEN FROM HOCVIEN 
WHERE YEAR(GETDATE()) - YEAR(NTNS) = (SELECT MAX(YEAR(GETDATE()) - YEAR(NTNS)) FROM HOCVIEN)

--12. Hãy cho biết mã lớp, tên lớp có số lượng học viên đóng biên lai ít nhất. (0.5đ)
SELECT TOP 1 L.MALOP, L.TENLOP
FROM LOPHOC L JOIN BIENLAI B ON L.MALOP = B.MALH
GROUP BY L.MALOP, L.TENLOP ORDER BY COUNT(B.MAHV)
