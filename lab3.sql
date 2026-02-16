-- DBMS LAB 3
-- Name: Ankit Raj
-- Roll No: 23157128020
-- College: BP Mandal College of Engineering, Madhepura
-- Subject: DBMS
-- Semester: 5th

-- ====================
-- 1) Department Data
-- ====================
INSERT INTO Department (DepartmentID, DepartmentName, OfficeLocation) VALUES
(1, 'Computer Science Engineering', 'Block A'),
(2, 'Civil Engineering', 'Block B'),
(3, 'Mechanical Engineering', 'Block C');

-- ====================
-- 2) Faculty Data (Only 4 teachers as confirmed)
-- ====================
INSERT INTO Faculty (FacultyID, Name, Designation, Email, DepartmentID) VALUES
(1, 'Sujeet Kumar', 'Assistant Professor', 'sujeet@bpmce.ac.in', 1),
(2, 'Arun Kumar', 'Assistant Professor', 'arun@bpmce.ac.in', 1),
(3, 'Vicky Anand', 'Assistant Professor', 'vickyanand@bpmce.ac.in', 2),
(4, 'Dr. Giri', 'Assistant Professor', 'drgiri@bpmce.ac.in', 3);

-- ====================
-- 3) Course Data (Mapped to the above faculty)
-- ====================
INSERT INTO Course (CourseID, CourseName, Credits, DepartmentID, FacultyID) VALUES
(1, 'Database Management System', 4, 1, 1),
(2, 'Digital Electronics', 3, 1, 2),
(3, 'Engineering Drawing', 3, 2, 3),
(4, 'Thermodynamics', 4, 3, 4);

-- ====================
-- 4) Student Data (10 students - CSE AI/ML under CSE dept)
-- Phone numbers are dummy as allowed
-- ====================
INSERT INTO Student (StudentID, Name, DateOfBirth, Gender, ContactNumber, DepartmentID) VALUES
(101, 'Ankit Raj', '2003-10-10', 'Male', '9123456701', 1),
(102, 'Harshit Kumar', '2003-08-12', 'Male', '9123456702', 1),
(103, 'Rajnish Kumar', '2003-07-15', 'Male', '9123456703', 1),
(104, 'Ayushi Kumari', '2003-05-20', 'Female', '9123456704', 1),
(105, 'Priyanshu Kumari', '2003-06-18', 'Female', '9123456705', 1),
(106, 'Ankita Mishra', '2003-09-01', 'Female', '9123456706', 1),
(107, 'Mayank Kumar', '2003-11-11', 'Male', '9123456707', 1),
(108, 'Rahul Kumar', '2003-12-02', 'Male', '9123456708', 1),
(109, 'Naveen Kumar', '2003-04-09', 'Male', '9123456709', 1),
(110, 'Nishant Kumar', '2003-03-22', 'Male', '9123456710', 1);

-- ====================
-- 5) Enrollment Data (At least 10 records)
-- ====================
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID, Semester, Grade) VALUES
(1, 101, 1, '5th', 'A'),
(2, 102, 1, '5th', 'B+'),
(3, 103, 1, '5th', 'A-'),
(4, 104, 2, '5th', 'B'),
(5, 105, 2, '5th', 'B+'),
(6, 106, 1, '5th', 'A'),
(7, 107, 3, '5th', 'B'),
(8, 108, 1, '5th', 'A-'),
(9, 109, 4, '5th', 'B+'),
(10, 110, 1, '5th', 'A');

-- ====================
-- 6) Verification Queries
-- ====================
SELECT * FROM Department;
SELECT * FROM Faculty;
SELECT * FROM Course;
SELECT * FROM Student;
SELECT * FROM Enrollment;
