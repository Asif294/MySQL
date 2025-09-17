create database bdtask;
use bdtask;
-- This is constraints  and its write with separel way  
CREATE TABLE STUDENT1(
    Roll CHAR(8) primary key,  -- its always unique  
    Name VARCHAR(100) NOT NULL, --  this field must required  
    Email VARCHAR(120) unique, -- this field mus have unique 
    Address VARCHAR(100), -- not requred its optional 
    Age INT check(Age>18) -- its chack age   
);
insert INTO STUDENT1(Roll,Name,Email,Address,Age) values (1,'Asifur Rahman','asif@gmail.com','Sherpur',20);
insert INTO STUDENT1(Roll,Name,Email,Address,Age) values (2,'Nijam','nijam@gmail.com','Habiganj',21);

--  used foreign key this table from table 1 
create table Library(
    Book_name VARCHAR(250),
	who_hird_roll char(8),
    foreign key (who_hird_roll) REFERENCES STUDENT1(Roll)
);
insert into Library(Book_name , who_hird_roll) values('Paradoxical Sajid',1);
insert into Library(Book_name , who_hird_roll) values('Paradoxical Sajid',2);

-- ##composit primary key  tow colam make one primary key 
 create table course(
	courseName varchar(50),
    univercityName varchar(56),
    credit int ,
    primary key (courseName,univercityName)
 );


