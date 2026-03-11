-- Part :- A (Student–Enrollment Relationship )

-- 1. Display StudentID and Name from Student table along with CourseID from Enrollment table.
SELECT s.StudentID, s.Name, e.CourseID
FROM Student s
INNER JOIN Enrollment e ON s.StudentID = e.StudentID;

-- 2. Display student Name and Semester for all enrolled students.
SELECT s.Name, e.Semester
FROM Student s
INNER JOIN Enrollment e ON s.StudentID = e.StudentID;

-- 3. Display student Name and Grade obtained in each course.
SELECT s.Name, e.Grade
FROM Student s
INNER JOIN Enrollment e ON s.StudentID = e.StudentID;


--Part :- B (Course–Faculty Relationship )


-- 4. Display CourseName and Credits along with the Faculty Name who teaches the course.
SELECT c.CourseName, c.Credits, f.Name AS FacultyName
FROM Course c
INNER JOIN Faculty f ON c.FacultyID = f.FacultyID;

-- 5. Display all courses taught by a faculty member whose FacultyID is 'F201'.
SELECT c.CourseID, c.CourseName, c.Credits
FROM Course c
INNER JOIN Faculty f ON c.FacultyID = f.FacultyID
WHERE f.FacultyID = 'FL201';

-- 6. Display faculty Name and Designation along with the CourseName they teach.
SELECT f.Name AS FacultyName, f.Designation, c.CourseName
FROM Faculty f
INNER JOIN Course c ON f.FacultyID = c.FacultyID;


--Part :- C (CStudent–Course–Enrollment Relationship)


-- 7. Display student Name along with CourseName for all enrollments.
SELECT s.Name, c.CourseName
FROM Student s
INNER JOIN Enrollment e ON s.StudentID = e.StudentID
INNER JOIN Course c ON e.CourseID = c.CourseID;

-- 8. Display student Name, CourseName, and Semester.
SELECT s.Name, c.CourseName, e.Semester
FROM Student s
INNER JOIN Enrollment e ON s.StudentID = e.StudentID
INNER JOIN Course c ON e.CourseID = c.CourseID;

-- 9. Display student Name, CourseName, and Grade for Semester 5 only.
SELECT s.Name, c.CourseName, e.Grade
FROM Student s
INNER JOIN Enrollment e ON s.StudentID = e.StudentID
INNER JOIN Course c ON e.CourseID = c.CourseID
WHERE TRIM(e.Semester) = '5th';

-- 10. Display all courses taken by a student whose StudentID is 'S401'.
SELECT c.CourseID, c.CourseName, c.Credits
FROM Student s
INNER JOIN Enrollment e ON s.StudentID = e.StudentID
INNER JOIN Course c ON e.CourseID = c.CourseID
WHERE s.StudentID = 'ST401';


--Part :- D (Department-Based JOIN Queries)


-- 11. Display student Name and DepartmentID along with CourseName.
SELECT s.Name, s.DepartmentID, c.CourseName
FROM Student s
INNER JOIN Enrollment e ON s.StudentID = e.StudentID
INNER JOIN Course c ON e.CourseID = c.CourseID;

-- 12. Display department-wise list of courses using DepartmentID.
SELECT d.DepartmentID, d.DepartmentName, c.CourseID, c.CourseName
FROM Department d
INNER JOIN Course c ON d.DepartmentID = c.DepartmentID
ORDER BY d.DepartmentID, c.CourseName;

-- 13. Display faculty Name along with department name they belong to.
SELECT f.Name AS FacultyName, d.DepartmentName
FROM Faculty f
INNER JOIN Department d ON f.DepartmentID = d.DepartmentID;


--Part :- E (JOIN with Filtering and Sorting)


-- 14. Display student Name and CourseName for students belonging to Department 'D101'.
SELECT s.Name, c.CourseName
FROM Student s
INNER JOIN Enrollment e ON s.StudentID = e.StudentID
INNER JOIN Course c ON e.CourseID = c.CourseID
WHERE s.DepartmentID = 'DP101';

-- 15. Display student Name and CourseName sorted by student name in ascending order.
SELECT s.Name, c.CourseName
FROM Student s
INNER JOIN Enrollment e ON s.StudentID = e.StudentID
INNER JOIN Course c ON e.CourseID = c.CourseID
ORDER BY s.Name ASC;

-- 16. Display faculty Name and CourseName sorted by course credits in descending order.
SELECT f.Name AS FacultyName, c.CourseName, c.Credits
FROM Faculty f
INNER JOIN Course c ON f.FacultyID = c.FacultyID
ORDER BY c.Credits DESC;


--Part :- F (Analytical JOIN Queries)


-- 17. Display number of students enrolled in each course.
SELECT c.CourseID, c.CourseName, COUNT(DISTINCT e.StudentID) AS StudentCount
FROM Course c
INNER JOIN Enrollment e ON c.CourseID = e.CourseID
GROUP BY c.CourseID, c.CourseName;

-- 18. Display number of courses taught by each faculty member.
SELECT f.FacultyID, f.Name AS FacultyName, COUNT(c.CourseID) AS CourseCount
FROM Faculty f
INNER JOIN Course c ON f.FacultyID = c.FacultyID
GROUP BY f.FacultyID, f.Name;

-- 19. Display department-wise count of students.
SELECT d.DepartmentID, d.DepartmentName, COUNT(s.StudentID) AS StudentCount
FROM Department d
INNER JOIN Student s ON d.DepartmentID = s.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName;

-- 20. Display course name along with maximum grade awarded in that course.
SELECT c.CourseID, c.CourseName, MAX(e.Grade) AS MaxGrade
FROM Course c
INNER JOIN Enrollment e ON c.CourseID = e.CourseID
GROUP BY c.CourseID, c.CourseName;
