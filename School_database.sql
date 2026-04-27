-- =========================
-- 1. DATABASE + TABLES
-- =========================
-- أنشاء قاعدة البيانات 
 create database SchoolDB;
-- اختيار قاعدة البيانات للعمل عليها 
USE SchoolDB;
show databases;
-- جدول الطلاب 
create table Students (
id INT primary key auto_increment, 
student_name varchar(100),
birth_date date,
gender char(1),
join_date date,
email varchar(100),
student_level int,
track varchar(20),
gpa decimal(5,2)
);
-- جدول المعلمين 
create table Teachers (
id INT primary key auto_increment, 
teachers_name varchar(100),
birth_date date,
gender char(1),
email varchar(100),
office_number varchar(10)
);
-- جدول المواد 
create table Subjects (
id INT primary key auto_increment, 
Subject_name varchar(100)
);

show tables;

-- =========================
-- 2. INSERT DATA
-- =========================
-- ادخال بيانات الطلاب (30 طالب) 
INSERT INTO Students (student_name, birth_date, gender, join_date, email, student_level , track,gpa)
VALUES ('Ali Ahmed','2006-01-01','M','2023-09-01','ali1@email.com',1,'علمي',95),
('Sara Ali','2006-02-10','F','2023-09-01','sara2@email.com',1,'علمي',88),
('Omar Hassan','2005-03-15','M','2023-09-01','omar3@email.com',2,'علمي',91),
('Lama Saeed','2005-04-20','F','2023-09-01','lama4@email.com',2,'انساني',85),
('Nora Fahad','2004-05-05','F','2023-09-01','nora5@email.com',3,'علمي',90),
('Yousef Khalid','2004-06-18','M','2023-09-01','yousef6@email.com',3,'انساني',78),
('Reem Nasser','2006-07-11','F','2023-09-01','reem7@email.com',1,'علمي',92),
('Fahad Ali','2005-08-22','M','2023-09-01','fahad8@email.com',2,'علمي',81),
('Maha Salem','2004-09-30','F','2023-09-01','maha9@email.com',3,'انساني',87),
('Khalid Omar','2006-10-14','M','2023-09-01','khalid10@email.com',1,'علمي',76),
('Sara Mohammed','2005-01-02','F','2023-09-01','s11@email.com',2,'علمي',89),
('ALi Nasser','2004-02-12','M','2023-09-01','s12@email.com',3,'انساني',83),
('Lina Saad','2006-03-25','F','2023-09-01','s13@email.com',1,'علمي',91),
('Ziad Fahad','2005-04-18','M','2023-09-01','s14@email.com',2,'علمي',77),
('Huda Salem','2004-05-27','F','2023-09-01','s15@email.com',3,'انساني',88),
('Turki Ali','2006-06-19','M','2023-09-01','s16@email.com',1,'علمي',82),
('Mariam Omar','2005-07-08','F','2023-09-01','s17@email.com',2,'علمي',94),
('Saad Khalid','2004-08-16','M','2023-09-01','s18@email.com',3,'انساني',79),
('Rana Ahmed','2006-09-05','F','2023-09-01','s19@email.com',1,'علمي',90),
('Nawaf Fahad','2005-10-21','M','2023-09-01','s20@email.com',2,'علمي',86),
('Alya Ali','2004-01-11','F','2023-09-01','s21@email.com',3,'انساني',84),
('Majed Omar','2006-02-23','M','2023-09-01','s22@email.com',1,'علمي',78),
('Noor Saad','2005-03-09','F','2023-09-01','s23@email.com',2,'علمي',92),
('Bader Khalid','2004-04-17','M','2023-09-01','s24@email.com',3,'انساني',80),
('Hanan Ahmed','2006-05-28','F','2023-09-01','s25@email.com',1,'علمي',95),
('Faisal Ali','2005-06-06','M','2023-09-01','s26@email.com',2,'علمي',88),
('Dana Omar','2004-07-14','F','2023-09-01','s27@email.com',3,'انساني',85),
('Abdullah Saad','2006-08-03','M','2023-09-01','s28@email.com',1,'علمي',79),
('Layan Fahad','2005-09-12','F','2023-09-01','s29@email.com',2,'علمي',93),
('Salem Ali','2004-10-30','M','2023-09-01','s30@email.com',3,'انساني',81);
-- ادخال بيانات المعلمين 
INSERT INTO Teachers (teachers_name, birth_date, gender, email, office_number)
VALUES
('Mohammed Ali','1980-01-01','M','t1@email.com','A1'),
('Sara Khalid','1982-02-10','F','t2@email.com','A2'),
('Omar Nasser','1979-03-15','M','t3@email.com','A3'),
('Lama Saeed','1985-04-20','F','t4@email.com','A4'),
('Fahad Omar','1981-05-05','M','t5@email.com','A5'),
('Reem Ali','1983-06-18','F','t6@email.com','A6'),
('Khalid Salem','1978-07-11','M','t7@email.com','A7'),
('Nora Saad','1984-08-22','F','t8@email.com','A8'),
('Yousef Ahmed','1980-09-30','M','t9@email.com','A9'),
('Maha Omar','1986-10-14','F','t10@email.com','A10');
-- إادخال المواد 
INSERT INTO Subjects(Subject_name)
 VALUES
('Math'),
('Physics'),
('Chemistry'),
('Biology'),
('English'),
('History');

-- =========================
-- 3. QUERIES (SELECT / UPDATE)
-- =========================
-- عرض الجداول 
show tables;
-- عرض بيانات الطلاب 
select * FROM Students;
-- عرض بيانات المعلمين 
select * FROM Teachers;
-- عرض بيانات المواد 
select * FROM Subjects;
-- ترتيب الطلاب حسب الاسم تصاعدياً 
select * from Students order by student_name asc;
--  student name الى student_name اتغيير اسم العمود 
select id, student_name AS "Student Name", gender,join_date,email,student_level,track,gpa
from Students;
-- تعديل بريد طالب 
update Students 
SET email = 'newemail@student.com'
where id =1;
-- تعديل رقم مكنب معلم 
update Teachers 
SET office_number = 'T1'
where id= 1;
-- تغيير اسم جدول المواد 
alter table Subjects 
rename TO Courses; 
