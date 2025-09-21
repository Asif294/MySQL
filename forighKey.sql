create table student (
student_name varchar(23),
roll char(6)
);
insert into student(student_name,roll) values('asif',101);

CREATE TABLE Persons (
    ID int NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

CREATE TABLE Orders (
    OrderID int NOT NULL primary key,
    OrderNumber int NOT NULL,
    PersonID int,
    FOREIGN KEY (PersonID) REFERENCES Persons(ID)
);