SET SQL_SAFE_UPDATES = 0; 
CREATE database ARYA;
USE ARYA;
CREATE TABLE Student2(
StudentID int,
FirstName VARCHAR(100),
LastName VARCHAR(100),
DOB int,
Email VARCHAR(100),
DepartmentID int
);
ALTER TABLE Student2
MODIFY DOB DATE;
ALTER TABLE Student2
ADD PRIMARY KEY (StudentID);
USE ARYA;
CREATE TABLE Department9(
DepartmentID int PRIMARY KEY,
DepartmentName VARCHAR(100),
Location VARCHAR(100)
);
USE ARYA;
CREATE TABLE Courses9
(
CourseID int PRIMARY KEY,
CourseName VARCHAR(100),
DepartmentID int,
Credits int
);
USE ARYA;
CREATE TABLE Professors9
(
ProfessorID int PRIMARY KEY,
FirstName VARCHAR(100),
LastName VARCHAR(100),
Email VARCHAR(100),
DepartmentID int
);
USE ARYA;
INSERT INTO Student2(StudentID, FirstName, LastName, DOB, Email, DepartmentID) VALUES
(301, 'David', 'Brown', '1999-04-05', 'david.brown@university.com', 1),
(302, 'Emily', 'White', '2000-08-12', 'emily.white@university.com', 2),
(303, 'Frank', 'Wilson','1998-11-23', 'frank.wilson@university.com', 3);
USE ARYA;
INSERT INTO Department9(DepartmentID, DepartmentName, Location) VALUES
(1, 'Computer Science', 'Building A'),
(2, 'Mathematics', 'Building B'),
(3, 'Physics', 'Building C');
USE ARYA;
INSERT INTO Courses9(CourseID, CourseName, DepartmentID, Credits) VALUES
(101, 'Introduction To Programming', 1,3),
(102, 'Algebra', 2,4),
(103, 'Quantum Mechanics', 3,4);
USE ARYA;
INSERT INTO Professors9(ProfessorID, FirstName, LastName, Email, DepartmentID) VALUES
(201, 'Alice', 'Johnson', 'alice.johnson@university.com', 1),
(202, 'Bob', 'Smith', 'bob.smith@university.com', 2),
(203, 'Carol', 'Taylor', 'carol.taylor@university.com', 3);
SHOW DATABASES;
Use ARYA;
UPDATE Professors9
SET FirstName='William'
WHERE LastName='Johnson';
SELECT * FROM Courses9
WHERE Credits > 3 AND CourseName ='Algebra';
SELECT * FROM Department9
WHERE Location ='Building A' OR Location ='Building c';
use ARYA;
select FirstName,LastName
from Professors9
where DepartmentID IN(select DepartmentID from Department9 where DepartmentName='Computer Science');







