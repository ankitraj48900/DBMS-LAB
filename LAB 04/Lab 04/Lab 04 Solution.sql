-- Part - A

SELECT 
StudentID AS Roll_No,
Name AS Student_Name,
DOB AS Date_of_Birth,
Gender,
ContactNo AS Contact,
DepartmentID AS Dept_ID
FROM Student;

SELECT 
StudentID AS Roll_No,
Name AS Student_Name,
DepartmentID AS Dept_ID
FROM Student;

SELECT 
FacultyID AS Faculty_ID,
Name AS Faculty_Name,
Designation AS Designation,
Email AS Email_ID
FROM Faculty;

SELECT 
CourseID AS Course_ID,
CourseName AS Course_Name,
Credits
FROM Course;

SELECT 
EnrollmentID AS Enroll_ID,
StudentID AS Roll_No,
CourseID AS Course_ID,
Semester,
DepartmentID AS Dept_ID,
FacultyID AS Faculty_ID,
Grade
FROM Enrollment;


-- Part - B

SELECT * FROM Student
WHERE DepartmentID = 'DP101';

SELECT * FROM Student
WHERE Gender = 'Female';

SELECT * FROM Faculty
WHERE Designation = 'Asst Pro';

SELECT * FROM Faculty
WHERE DepartmentID = 'DP102';

SELECT * FROM Course
WHERE Credits >= 4;

SELECT * FROM Student
WHERE DOB > TO_DATE('2003-01-01', 'YYYY-MM-DD');

SELECT * FROM Enrollment
WHERE Semester = '5th';


-- Part - C

SELECT * FROM Student
ORDER BY Name ASC;

SELECT * FROM Student
ORDER BY DOB DESC;

SELECT * FROM Faculty
ORDER BY Designation ASC;

SELECT * FROM Course
ORDER BY Credits DESC;

SELECT * FROM Student
FETCH FIRST 3 ROWS ONLY;

SELECT * FROM Course
FETCH FIRST 5 ROWS ONLY;


-- Part - D

SELECT 
Name,
TRUNC(MONTHS_BETWEEN(SYSDATE, DOB) / 12) AS Age
FROM Student;

SELECT 
CourseName,
credits,
Credits + 1 AS Updated_Credits
FROM Course;

SELECT 
EnrollmentID,
StudentID,
CourseID,
Semester,
Grade AS Final_Grade
FROM Enrollment;

SELECT 
Name,
EXTRACT(YEAR FROM DOB) AS Birth_Year
FROM Student;

SELECT 
Name,
SUBSTR(Email, INSTR(Email, '@') + 1) AS Email_Domain
FROM Faculty;

COMMIT;
