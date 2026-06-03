CREATE DATABASE hospital;
USE hospital;

CREATE TABLE employees(
  ma_id VARCHAR(15),
  ho_ten VARCHAR(20),
  ngay_sinh VARCHAR(10),
  tuoi INT(200),
  phong_kham VARCHAR(10),
  email VARCHAR(50)
);

INSERT INTO employees VALUES
("AR48921", "Smile", "5-4-1997", 29, "E3-04", "rein201023@gmail.com" ),
("BU15595", "Le Thi Na", "19-6-1987", 39, "A5-23", "lethina1987@gmail.com" ),
("KX33354", "Nguyen Vina", "6-12-1994", 32, "B4-23", "vina9991@gmail.com" ),
("CS20183", "Dao Ngoc Ha", "9-3-1973", 53, "F5-14", "dnha1973@gmail.com" ),
("SD71735", "Phan Nam Truong", "1-8-2005", 21, "C5-29", "truongdao@gmail.com" ),
("AV00491", "Leu Tuan Manh", "31-12-2007", 19, "D5-03", "leumanh2007@gmail.com" );

INSERT INTO employees VALUES ("UV01921", "Katty Nguyen", "24-2-2012", 14, "A2-06", NULL );
SELECT * FROM employees;

DELETE FROM employees WHERE ma_id = 'UV01921';
DROP TABLE employees;
DROP DATABASE hospital;

SELECT age FROM employees WHERE age > 20;