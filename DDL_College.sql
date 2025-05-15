create database college;

USE college;

--department
create table department (
depID int primary key ,
depName varchar (20)not null, 
fID INT, 
 FOREIGN KEY (fID) references Faculty (fID),
);

--SUBJECTS
create table subjects (
supID int primary key ,
supName varchar (20)not null,
);

--EXAMS
create table exams (
exaID int primary key not null ,
times time not null, 
room varchar(50) not null,
dates date,
depID INT,
 FOREIGN KEY (depID) REFERENCES department(depID)
);

--HOSTEL
CREATE TABLE Hostel (
  HostelID INT PRIMARY KEY NOT NULL,
  HostelName VARCHAR(100) NOT NULL,
  NoSeats INT NOT NULL
);   

--Student
CREATE TABLE Student (
  StuID INT PRIMARY KEY NOT NULL,
  FName VARCHAR(50) NOT NULL,
  LName VARCHAR(50) NOT NULL,
  PinCode VARCHAR(10) NOT NULL,
  State VARCHAR(50) NOT NULL,
  City VARCHAR(50) NOT NULL,
  DOB DATE NOT NULL,
  HostelID INT NOT NULL,
  FID INT NOT NULL,
  FOREIGN KEY (HostelID) REFERENCES Hostel(HostelID),
  FOREIGN KEY (fID) REFERENCES Faculty(fID)
);

--Faculty
CREATE TABLE Faculty (
  FID INT PRIMARY KEY NOT NULL,
  Name VARCHAR(100) NOT NULL,
  Salary DECIMAL(10, 2) NOT NULL,
  Department VARCHAR(100) NOT NULL,
  SupID INT NOT NULL,
  FOREIGN KEY (SupID) REFERENCES Subjects(SupID)
);

--course
CREATE TABLE Course (
  CourseID INT PRIMARY KEY NOT NULL,
  CourseName VARCHAR(100) NOT NULL,
  Duration VARCHAR(50) NOT NULL
);

--StudentCourse
CREATE TABLE StudentCourse (
  StuID INT NOT NULL,
  CourseID INT NOT NULL,
  PRIMARY KEY (StuID, CourseID),
  FOREIGN KEY (StuID) REFERENCES Student(StuID),
  FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

--MobileNO
CREATE TABLE MobileNO (
  MobileNO VARCHAR(15) PRIMARY KEY NOT NULL,
  FID INT NOT NULL,
  FOREIGN KEY (FID) REFERENCES Faculty(FID)
);









