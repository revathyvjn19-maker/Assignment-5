# Assignment-5
DDL Commands and Constraints

# MySQL Assignment 1 – DDL Commands & Constraints
# DDL Commands :

1.	Table Creation
Created a database named employee

**create database Employee;**
*use Employee;*

-	Created three tables: Departments, Location, and Employees.

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

2. Table Alteration
Add Email Column

alter table Employees add Email varchar(50) unique;
Modify Designation Column

alter table Employees modify Designation varchar (50);
Drop Age Column

alter table Employees drop column Age;
Rename Hire_Date Column to Date of Joining

Alter table Employees rename column Hire_Date to Date_of_Joining;
3.	Table Renaming

Renamed the existing tables.

Rename table Departments to Departments_Info;
Rename table Location to Locations;

4.	Table Truncation 
Removed all records from the Employees table while keeping its structure

truncate Employees;

5.	Database & Table Dropping

Dropped the Employees table and the employee database.

drop table Employees;
drop database employee;

# Constraints :
1.	Database Recreation:
Dropped the existing database, recreated it, and selected it for further operations

drop database if exists Employee;

create database Employee;
use Employee;
2.	Departments Table:

Ensure that the "department_id" uniquely identifies each department.
Set up constraints on the "department_name" to avoid duplicate and null entries.

create table Departments (
Department_ID int primary key auto_increment, 
Department_name varchar(100) unique not null);

3.Location Table:
Establish a mechanism to automatically generate unique identifiers for each location, ensuring that they are incremented sequentially. 
 Implement constraints to prevent the insertion of null and duplicate locations.

create table Location (
Location_ID int primary key auto_increment,
Location varchar (30)unique not null);

3.	Employees Table:

⦿ Guarantee that each employee has a distinct identifier. 
⦿ Create a restriction to ensure that the employee's name is always provided. 
⦿ Limit the acceptable values for the "gender" field to only 'M' or 'F'. 
⦿ Enforce a condition to ensure that the employee's age is 18 or above. 
⦿ Automatically assign the current date to the "hire_date" field if not specified.
 ⦿ Establish links between the "department_id" and "location_id" fields in the "employees" table and their respective tables.

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

