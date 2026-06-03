CREATE DATABASE Quanlysinhvien;
GO
USE Quanlysinhvien;
GO
CREATE TABLE Sinhvien(
  ma_sv INT PRIMARY KEY,
  ho_ten VARCHAR(100) NOT NULL,
  lop_hoc VARCHAR(50) NOT NULL,
  nganh_hoc VARCHAR(120) NOT NULL
);
GO
SELECT * FROM Sinhvien;
GO
INSERT INTO Sinhvien VALUES 
  (12345, 'Nguyen Van A', 'ITS2021', 'IT'),
  (29812, 'Hana Tran', 'MT2021', 'CNSH'),
  (99155, 'Trung Khanh', 'KTTC2021', 'KT'),
  (76344, 'Le Bao Ngoc', 'QHCC2021', 'QHCC');
GO
TRUNCATE TABLE Sinhvien;
DELETE FROM Sinhvien WHERE ma_sv = 99155;
DROP DATABASE Quanlysinhvien;
DROP TABLE Sinhvien;