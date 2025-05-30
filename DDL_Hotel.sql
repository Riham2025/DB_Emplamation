create database Hotel
USE Hotel

--Rooms
CREATE TABLE Rooms (
  Nrate INT PRIMARY KEY NOT NULL,
  Typee VARCHAR(50) NOT NULL,
  RNum VARCHAR(20) NOT NULL,
  BID INT NOT NULL,
  FOREIGN KEY (BID) REFERENCES Branch(BID)
);

--customer
CREATE TABLE Customer (
ID INT PRIMARY KEY NOT NULL,
Name VARCHAR(100) NOT NULL
);

--staff
CREATE TABLE Staff (
  SID INT PRIMARY KEY NOT NULL,
  Salary DECIMAL(10, 2) NOT NULL,
  Name VARCHAR(100) NOT NULL,
  JobT VARCHAR(50) NOT NULL,
  BID INT NOT NULL,
  FOREIGN KEY (BID) REFERENCES Branch(BID)
);

--breach
CREATE TABLE Branch (
  BID INT PRIMARY KEY NOT NULL,
  Location VARCHAR(255) NOT NULL,
  Name VARCHAR(100) NOT NULL
);

--EMAIL
CREATE TABLE Email (
  Email VARCHAR(100) NOT NULL,
  SID INT NOT NULL,
  PRIMARY KEY (Email, SID),
  FOREIGN KEY (SID) REFERENCES Staff(SID)
);

--Phone
CREATE TABLE Phone (
  PhoneNo VARCHAR(15) NOT NULL,
  SID INT NOT NULL,
  PRIMARY KEY (PhoneNo, SID),
  FOREIGN KEY (SID) REFERENCES Staff(SID)
);

--Sroom
CREATE TABLE Sroom (
  ID INT NOT NULL,
  SID INT NOT NULL,
  Nrate INT NOT NULL,
  PRIMARY KEY (ID, SID, Nrate),
  FOREIGN KEY (SID) REFERENCES Staff(SID),
  FOREIGN KEY (Nrate) REFERENCES Rooms(Nrate)
);


alter table Sroom 
add 
FOREIGN KEY (ID) REFERENCES Customer(ID) 

