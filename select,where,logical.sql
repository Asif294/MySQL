create table student(
	Name varchar(150) NOT null,
    Roll Char(10) primary key,
    Phone char(11) not null,
    Email varchar (100) unique,
    Address varchar(200)
);
insert into student values('asif',1,01885430525,'asir@gmail.com','sherpur');
insert into student values('nijam',2,01882430525,'air@gmail.com','sherpur');
insert into student values('asifr',3,01885430522,'sir@gmail.com','sherpur');
insert into student values('asifa',4,01825430525,'asi@gmail.com','sherpur');
--                ******* SELECT *****
 -- ## select * from student use for show full table data 
-- ## select culamName from TableName use for show  particolar culam   

--                ******* where *****
--  ## where use for conditional quary 
-- ## select * from TableName            select  * from student
--  ## where culumName ='values'          where name ='asif'
 create table marks(
	Roll char(10),
    foreign key (Roll) references student(Roll),
    python double ,
    mysql double
 );
insert into marks values(1,86,89);
insert into marks values(2,76,89);
insert into marks values(3,50,65);
-- Arithmatic Oparator in SQL
-- (+) its user for sum 2 valu in one tale
select python  + mysql from marks where Roll=1 ;
--  (-) its use for subtration(-) 
select python - mysql from marks where roll=1;
-- Multiplication (*) its use for multiple value 
select python * mysql from marks where roll=2;
-- Division (/): Divides one numeric value by another
select python / mysql from marks where roll=2;
-- Modulo (%): Returns the remainder of a division operation.
select python % mysql from marks where roll=2;

create table Employee(
   ID char(5) primary key,
   Name varchar (60),
   salary double,
   age int
);
insert into Employee values(105,'Said',15000,32);
insert into Employee values(106,'Sauda',150000,22);
insert into Employee values(107,'Saif',1000,25);
--  *******Logical oparator******
--  AND --- OR
select name ,salary from Employee
where age > 23 
      and salary > 2000 ; 
select name ,salary from Employee
where age > 23 
      or salary > 2000 ; 
-- *** DISTINT / ORDER BY / LIMIT / OFFSET 
--  DISTINT  use for non ripid values , once value dont show second time show unique values
select distinct age from employee ;
--  ORDER BY   ACS /DECS
-- ASC use for show data by assenditon  small to big
select name from employee  order by age asc; 
-- DESC use for show data by assenditon  big to small 
select name from employee  order by age desc; 
  