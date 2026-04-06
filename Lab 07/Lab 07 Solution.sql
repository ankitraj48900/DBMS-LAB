-- Part A: Basic Subqueries

-- 1. Display names of students who belong to the same department as student 'ST401'.
SELECT Name
FROM Student
WHERE DepartmentID = (
    SELECT DepartmentID
    FROM Student
    WHERE StudentID = 'ST401'
);

-- 2. Display students who have the same gender as student 'ST402'.
SELECT StudentID, Name, Gender
FROM Student
WHERE Gender = (
    SELECT Gender
    FROM Student
    WHERE StudentID = 'ST402'
);

-- 3. Display students belonging to the same department as 'ST403'.
SELECT StudentID, Name, DepartmentID
FROM Student
WHERE DepartmentID = (
    SELECT DepartmentID
    FROM Student
    WHERE StudentID = 'ST403'
);


-- Part B: Subqueries with IN

-- 4. Display students whose DepartmentID exists where Gender is 'Female'.
SELECT StudentID, Name, DepartmentID
FROM Student
WHERE DepartmentID IN (
    SELECT DepartmentID
    FROM Student
    WHERE Gender = 'Female'
);

-- 5. Display students whose StudentID appears in the Enrollment table.
SELECT StudentID, Name
FROM Student
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment
);

-- 6. Display students who are enrolled in any course.
SELECT StudentID, Name
FROM Student
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment
);


-- Part C: Subqueries with Aggregate Functions

-- 7. Display courses having credits greater than average credits.
SELECT CourseID, CourseName, Credits
FROM Course
WHERE Credits > (
    SELECT AVG(Credits)
    FROM Course
);

-- 8. Display students whose StudentID is greater than the average StudentID (numeric comparison).
SELECT StudentID, Name
FROM Student
WHERE TO_NUMBER(SUBSTR(StudentID, 3)) > (
    SELECT AVG(TO_NUMBER(SUBSTR(StudentID, 3)))
    FROM Student
);

-- 9. Display departments having more students than the average number of students per department.
SELECT DepartmentID, DepartmentName
FROM Department
WHERE DepartmentID IN (
    SELECT DepartmentID
    FROM Student
    GROUP BY DepartmentID
    HAVING COUNT(*) > (
        SELECT AVG(StudentCount)
        FROM (
            SELECT COUNT(*) AS StudentCount
            FROM Student
            GROUP BY DepartmentID
        )
    )
);


-- Part D: Subqueries Instead of JOIN

-- 10. Display names of students who are enrolled in courses (without using JOIN).
SELECT Name
FROM Student
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment
);

-- 11. Display students who are allocated to any department (using subquery logic).
SELECT StudentID, Name, DepartmentID
FROM Student S
WHERE EXISTS (
    SELECT 1
    FROM Department D
    WHERE D.DepartmentID = S.DepartmentID
);

-- 12. Display courses that have at least one student enrolled.
SELECT CourseID, CourseName
FROM Course C
WHERE EXISTS (
    SELECT 1
    FROM Enrollment E
    WHERE E.CourseID = C.CourseID
);


-- Part E: Analytical Subqueries

-- 13. Display the course with maximum credits.
SELECT CourseID, CourseName, Credits
FROM Course
WHERE Credits = (
    SELECT MAX(Credits)
    FROM Course
);

-- 14. Display students who are enrolled in more than one course.
SELECT StudentID, Name
FROM Student
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment
    GROUP BY StudentID
    HAVING COUNT(*) > 1
);

-- 15. Display departments having the maximum number of students.
SELECT DepartmentID, DepartmentName
FROM Department
WHERE DepartmentID IN (
    SELECT DepartmentID
    FROM Student
    GROUP BY DepartmentID
    HAVING COUNT(*) = (
        SELECT MAX(StudentCount)
        FROM (
            SELECT COUNT(*) AS StudentCount
            FROM Student
            GROUP BY DepartmentID
        )
    )
);


-- Part F: Challenging Questions

-- 16. Display students who are enrolled in the same course as student 'ST401'.
SELECT S.StudentID, S.Name
FROM Student S
WHERE EXISTS (
    SELECT 1
    FROM Enrollment E
    WHERE E.StudentID = S.StudentID
      AND E.CourseID IN (
          SELECT CourseID
          FROM Enrollment
          WHERE StudentID = 'ST401'
      )
);

-- 17. Display students who are not enrolled in any course.
SELECT S.StudentID, S.Name
FROM Student S
WHERE NOT EXISTS (
    SELECT 1
    FROM Enrollment E
    WHERE E.StudentID = S.StudentID
);

-- 18. Display courses that have no students enrolled.
SELECT C.CourseID, C.CourseName
FROM Course C
WHERE NOT EXISTS (
    SELECT 1
    FROM Enrollment E
    WHERE E.CourseID = C.CourseID
);
