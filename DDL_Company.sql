


create database company

USE company

--department
create table department (
Dname varchar(50) not null,
ssn INT, 
 FOREIGN KEY (ssn) references employees (ssn),
startDaye date not null,
dno int primary key

 );

 --Employee Table
 create table employees ( 
 ssn INT PRIMARY KEY,
 firstNmae VARCHAR(50) NOT NULL,
 lastNmae VARCHAR(50) NOT NULL,
 Minit varchar (50) not null,
Bdate date not null,
Adress varchar (50) not null,
sex char ,
salary decimal(10,2) check (salary >0)
 
 );

 --DEPT_LOCATION
create table deptLocation ( 
 dLocation varchar PRIMARY KEY,
 don INT ,
 FOREIGN KEY (don) references department(dno)
 );

 --PROJECT
create table project ( 
Pname varchar (50) not null,
pnumber INT PRIMARY KEY,
plocation varchar (20) not null,
don INT ,
 FOREIGN KEY (don) references department(dno) 
 );

 --WORKS_NO
 create table workNO (
 hoursNO int, 
 pnumber INT ,
 FOREIGN KEY (pnumber) references project(pnumber),
don INT ,
 FOREIGN KEY (don) references department(dno)
 
 ); 

 alter table Employees
	add dno int foreign key references Department(dno)

