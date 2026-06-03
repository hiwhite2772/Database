-- Active: 1778232349406@@127.0.0.1@3306@mysql
CREATE DATABASE demo;
USE demo;

CREATE TABLE people(
  id INT,
  first_name VARCHAR(50) UNIQUE,
  last_name VARCHAR(50),
  class VARCHAR(20),
  email VARCHAR(150),
  phone_number INT,
  grade DECIMAL(10, 2)
  );

INSERT INTO people VALUES(1, "An", "Nguyen Van", "DT30", "An.1933@outlook.com", 19003444, 9.65),
(2, "Binh", "Dang Ngoc", "DT31", "Binh.1865@outlook.com", 15677634, 7.8),
(3, "Cong", "Dao Van", "DT29", "Cong.2043@outlook.com", 20092313, 8.56),
(4, "Dinh", "Bui Hong", "DT28", "Dinh.1784@outlook.com", 90232255, 7.98),
(5, "Emma", "Rein", "DT30", "Emma.1009@outlook.com", 44839232, 8.74);

SELECT * FROM people;
SELECT * FROM people WHERE class <> "DT30" and grade > 8;

TRUNCATE TABLE people;
DELETE FROM people;
DROP TABLE people;
DROP DATABASE demo;