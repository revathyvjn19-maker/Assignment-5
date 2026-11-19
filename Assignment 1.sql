create database Employee;
use Employee;

create table Departments (
Department_ID int primary key , 
Department_name varchar(100));

create table Location (
Location_ID int primary key,
Location varchar (30));

create table Employees (
Employee_ID int primary key,
Employee_Name varchar(50),
Gender enum ('M','F'),
Age int,
Hire_Date date,
Designation varchar(100),
Department_ID int,
Location_ID int,
Salary decimal(10,2),
Foreign key(Department_ID) references Departments (Department_ID),
Foreign key(Location_ID) references Location (Location_ID));

alter table Employees add Email varchar(50) unique;
alter table Employees modify Designation varchar (50);
alter table Employees drop column Age;
Alter table Employees rename column Hire_Date to Date_of_Joining;

Rename table Departments to Departments_Info;
Rename table Location to Locations;

truncate Employees;

select * from Employees;
select * from Departments_Info;
select * from Locations;

drop table Employees;
drop database employee;

drop database if exists Employee;

create database Employee;
use Employee;

create table Departments (
Department_ID int primary key auto_increment, 
Department_name varchar(100) unique not null);

create table Location (
Location_ID int primary key auto_increment,
Location varchar (30) unique not null);

create table Employees (
Employee_ID int primary key auto_increment,
Employee_Name varchar(50) not null,
Gender enum ('M','F'),
Age int check (Age>=18),
Hire_Date date default (Current_Date),
Designation varchar(100),
Department_ID int,
Location_ID int,
Salary decimal(10,2),
Foreign key(Department_ID) references Departments (Department_ID),
Foreign key(Location_ID) references Location (Location_ID));

