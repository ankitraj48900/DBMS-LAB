-- DBMS LAB 1
-- Name: Ankit Raj
-- Roll No: 23157128020
-- Subject: DBMS
-- College: BP Mandal College of Engineering, Madhepura
-- Semester: 5th

CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50),
    Dept VARCHAR(20),
    Age INT,
    Phone VARCHAR(15)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Credits INT
);

ALTER TABLE Student ADD City VARCHAR(50);
ALTER TABLE Student ADD Semester INT;
ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;
DROP TABLE Course;

INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester) VALUES
(101, 'Rahul', 'CSE', 20, '9876543210', 'Gaya', 5),
(102, 'Amit', 'ECE', 21, '9876543211', 'Patna', 5),
(103, 'Neha', 'CSE', 19, '9876543212', 'Nalanda', 5),
(104, 'Priya', 'ME', 22, '9876543213', 'Bhagalpur', 5),
(105, 'Suman', 'CSE', 23, '9876543214', 'Patna', 5);

SELECT * FROM Student;
SELECT RollNo, Name FROM Student;
SELECT * FROM Student WHERE Dept = 'CSE';
SELECT * FROM Student WHERE Age > 20;

UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;
UPDATE Student SET City = 'Patna' WHERE Name = 'Rahul';
UPDATE Student SET Age = Age + 1;
DELETE FROM Student WHERE RollNo = 105;
DELETE FROM Student;
