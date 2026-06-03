create database school;
use school;

create table students(
	id int primary key,
	name varchar(50),
	class varchar(20),
	gender varchar(10),
	age int,
	math_score decimal(4,1)
);

INSERT INTO students
VALUES
(1, 'An', 'DT01', 'Male', 18, 8.5),
(2, 'Binh', 'DT01', 'Male', 19, 7),
(3, 'Chi', 'DT02', 'Female', 18, 9.2),
(4, 'Dung', 'DT02', 'Female', 20, 6.8),
(5, 'Eval', 'DT03', 'Female', 19, 8.9),
(6, 'Phong', 'DT03', 'Male', 21, 6.8),
(7, 'Giang', 'DT01', 'Female', 18, 9.5),
(8, 'Hana', 'DT02', 'Male', 20, 7.8);

-- Hiển thị bảng và các cột riêng theo yêu cầu.
Select * from students;
select name, class, math_score from students;

-- Tìm điều kiện chọn lọc theo yêu cầu
select * from students where math_score > 8;
select * from students where gender = 'female';
select * from students where age >= 19;

-- Using of AND / OR / NOT
select * from students where gender = 'female' and math_score > 8;
select * from students where class = 'DT01' or class = 'DT03';
select * from students where not class = 'dt02';
-- Cách dùng kết hợp theo thứ tự: not-and-or
select * from students where not class = 'dt02' and (class = 'DT01' or class = 'DT03');

-- Dùng group by
select class, avg(math_score) as diem_trung_binh from students group by class;
select class, count(id) as so_hoc_sinh from students group by class;

select class, avg(math_score) as diem_trung_binh_cao_nhat from students group by class order by diem_trung_binh_cao_nhat desc limit 1;
select count(id) as so_hoc_sinh_gioi from students where math_score >= 8;
select max(math_score) as diem_cao_nhat, min(math_score) as diem_thap_nhat, avg(math_score) as diem_trung_binh from students;