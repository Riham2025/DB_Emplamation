create database Airport
USE Airport

--Airport
CREATE TABLE airport (
  AirID INT PRIMARY KEY NOT NULL,
  City VARCHAR(100) NOT NULL,
  Name VARCHAR(100) NOT NULL,
  State VARCHAR(100) NOT NULL
);

--FlightLeg
CREATE TABLE FlightLeg (
  LegNo INT primary key NOT NULL,
  AirCode VARCHAR(10) NOT NULL,
  Number INT NOT NULL,
  SchArrTime TIME NOT NULL,
  SchDepTime TIME NOT NULL,
);



