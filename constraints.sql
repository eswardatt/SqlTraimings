-- constraints
-- In sql, constraints are rules applied to a table's colums to enforce data integrity and maintain data consistency.

--1. Primary key : it ensures that each row in a table has a uique identifier
create table Students(
StudentId int identity(2,2) primary key,
Name varchar(30),
Age int
);

--2 foreign key 
-- it help us to refer particular main table data
create table PaymentDetials(
paymentId int identity(2,2) primary key,
studentid int foreign key references Students(StudentId)
);

--3 unique constraint and not null
create table department(
Id int identity(1,1) primary key,
Name varchar(10) unique not null
);
select * from department order by Id asc
insert into department(Name) values(null)

--4 check constraint

insert into Students (Name,Age) values('RAM',220)

select * from Students

alter table Students add constraint CHK_AGe  check(age<100)

create table Students_1(
StudentId int identity(2,2) primary key,
Name varchar(30),
Age int check(age<100)
);
insert into Students_3 (Name,Age) values('RAJ',22)

--default constraint
create table Students_3(
StudentId int identity(2,2) primary key,
Name varchar(30),
Age int check(age<100),
isPresent int default 1,
Joineddate date default getdate()
);
select * from Students_3