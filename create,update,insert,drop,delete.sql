create database bdtask;
use bdtask;
create table Student(
	Roll Char(5) PRIMARY KEY ,
    Name varchar(50),
    Mark double 
);

Insert into Student(Roll,Name,Mark) values (1,'Asif',98);
Insert into Student(Roll,Name,Mark) values (2,'Nijam',88);

SET SQL_SAFE_UPDATES=0;
update Student 
set name='Asifur rahamn'
where Roll=1;

SET SQL_SAFE_UPDATES=1;