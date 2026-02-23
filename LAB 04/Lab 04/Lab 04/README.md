# DB Lab 04 – Data Retrieval Using SQL (Read-Only Queries)

This repository contains **Database Design Lab – 04** focused on **Data Retrieval using SQL**.

The lab covers:

- Displaying table data
- Using column aliases
- Filtering records (WHERE)
- Sorting and limiting results
- Derived / computed outputs

⚠️ All queries are **READ ONLY** (no data modification).

---

## Objective

To understand and practice retrieving data from existing database tables using SQL SELECT queries, without changing database structure or stored records.

---

## Tables Used

- Student
- Faculty
- Course
- Enrollment
- Department

---

## Topics Covered

### Part A – Basic Data Display (Aliases)

- Display tables with renamed columns
- Improve output readability using AS

---

### Part B – Conditional Data (WHERE)

- Filter by Department
- Filter by Gender
- Filter by Designation
- Date based filtering
- Credit based filtering

---

### Part C – Sorting & Limiting

- ORDER BY ASC / DESC
- LIMIT clause

---

### Part D – Derived / Computed Output

- Age calculation from DOB
- Updated Credits
- Birth Year extraction
- Email Domain extraction

---

## Table Structures

### Student

| Column       | Type |
|-------------|------|
| StudentID   | PK   |
| Name        | VARCHAR |
| DOB         | DATE |
| Gender      | VARCHAR |
| ContactNo  | VARCHAR |
| DepartmentID | FK |

---

### Faculty

| Column | Type |
|--------|------|
| FacultyID | PK |
| Name | VARCHAR |
| Designation | VARCHAR |
| Email | VARCHAR |
| DepartmentID | FK |

---

### Course

| Column | Type |
|--------|------|
| CourseID | PK |
| CourseName | VARCHAR |
| Credits | NUMBER |

---

### Enrollment

| Column | Type |
|--------|------|
| EnrollmentID | PK |
| StudentID | FK |
| CourseID | FK |
| Semester | NUMBER |
| Grade | VARCHAR |

---

### Department

| Column         | Type       |
| -------------- | ---------- |
| DepartmentID   | PK |
| DepartmentName | VARCHAR    |
| OfficeLocation | VARCHAR    |


## SQL Implementation

### Part A – Aliases

```sql
SELECT StudentID AS Roll_No,
Name AS Student_Name,
DepartmentID AS Dept_ID
FROM Student;
