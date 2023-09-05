/*this is comment in sql
for multiple line and end with this like*/

-- this in sigle line comment

/*1st  we going to use DDL commands 
which include
CREATE Command
DROP Command
ALTER Command
TRUNCATE Command
RENAME Command
*/

--1st create database
create database /*(database name)*/ Details;

--build table in new created data base 
use Details
--create table in database 'Details'
create table /*(table name)*/ students
( 
id int,
fname varchar(20),
age int,
blood_group varchar(5),
category varchar(10)
)

--to check if columns are appear
select * from students

--to put value of all column
insert into /*(table_name)*/ students (id,fname,age,blood_group,category)
values (001,'abhinav',25,'NA','obc'),
(002,'tarak',26,'NA','sc'),
(003,'sharukh',27,'NA','general')

--to check result
select * from students


--to add another column in table
alter table students 
add CGPA int

--to put value in CGPA column
update students set CGPA =6.5 where id=1
update students set CGPA =6.3 where id=2
update students set CGPA =8.6 where id=3

--to check row affected
select * from students

--if whole no. is print then for decimal numbers change datatype 
ALTER TABLE students
ALTER COLUMN CGPA float(4);

-- again enter same values
update students set CGPA =6.5 where id=1
update students set CGPA =6.3 where id=2
update students set CGPA =8.6 where id=3

--again check row affected
select * from students



--add new row 
insert into students (id,fname,age,blood_group,category,CGPA)
values(004,'rajni',26,'A-','ST',7.1)

--To change prticular value
update students
set blood_group='B+'
where fname = 'abhinav'

--to delete column
alter table students
drop column blood_group

--to check results
select *from students

--to delete row
delete from students
where fname='rajni'

/* to delete whole database just type
drop database Detials*/

-- lets add some row/data in table for further query
insert into students (id,fname,age,category,CGPA)
values(4,'rajni',26,'ST',7.1),
(5, 'madhu', 21, 'st', 8.6),
(6, 'sewag', 26, 'obc', 7.0),
(7, 'sachine', 22, 'obc', 6.1),
(8, 'shubham', 24, 'general', 8.5),
(9, 'pooja', 23, 'general', 4.9),
(10, 'vaishnavi', 27, 'sc', 5.8),
(11, 'sam', 20, 'nri', 9.7),
(12, 'abhineel', 25, 'obc', 7.8),
(13, 'abhishek', 22, 'sc', 9.0),
(14, 'abhimanyu', 28, 'st', 6.4),
(15, 'priyanka', 21, 'general', 8.7),
(16, 'tyson', 24, 'nri', 5.6),
(17, 'shinshan', 22, 'nri', 6.1),
(18, 'William', 23, 'nri', 8.8),
(19, 'praful', 25, 'obc', 6.0),
(20, 'jamshed', 22, 'general', 8.9)

--to check result
select *  from students