# DBMS Lab 06 - Aggregate, GROUP BY, HAVING, and JOIN Queries

This repository contains **Database Design Lab - 06** based on the **College Database**. The lab focuses on:

- Writing aggregate queries using `COUNT`, `MAX`, and `MIN`
- Using `GROUP BY` on single tables
- Filtering grouped results using `HAVING`
- Performing aggregation with `JOIN`
- Solving analytical SQL queries on an existing schema

---

## Objective

To understand how to write summary and analytical SQL queries on a relational database using aggregate functions, grouping, filtering, and joins.

---

## Prerequisite

This lab assumes the following tables already exist in the College Database:

- Department
- Student
- Faculty
- Course
- Enrollment

These tables can be created using the schema from the earlier College Database lab.

---

## Tables Used

- Department
- Student
- Faculty
- Course
- Enrollment

---

## Topics Covered

### Part A - Basic Aggregate Queries

- Count total students
- Count total faculty members
- Count total courses
- Find maximum course credits
- Find minimum course credits

---

### Part B - GROUP BY on Single Tables

- Count students department-wise
- Count faculty department-wise
- Count courses department-wise
- Count enrollments semester-wise
- Count students grade-wise

---

### Part C - GROUP BY with HAVING

- Departments having more than 3 students
- Semesters having more than 2 enrollments
- Grades assigned to more than one student
- Departments offering more than one course

---

### Part D - Aggregation with JOIN

- Students enrolled in each course
- Course name with enrolled student count
- Department-wise student count
- Faculty-wise course count

---

### Part E - Analytical Queries

- Maximum grade in each course
- Total courses offered by each department
- Semester-wise student count
- Courses having more than 2 students enrolled

---

## Query Summary

| Query No. | Description |
| --------- | ----------- |
| 1 | Display total number of students |
| 2 | Display total number of faculty members |
| 3 | Display total number of courses |
| 4 | Display maximum credits among courses |
| 5 | Display minimum credits among courses |
| 6 | Display number of students in each department |
| 7 | Display number of faculty members in each department |
| 8 | Display number of courses in each department |
| 9 | Display number of enrollments in each semester |
| 10 | Display number of students for each grade |
| 11 | Display departments having more than 3 students |
| 12 | Display semesters having more than 2 enrollments |
| 13 | Display grades assigned to more than one student |
| 14 | Display departments offering more than one course |
| 15 | Display number of students enrolled in each course |
| 16 | Display course name with enrolled student count |
| 17 | Display department-wise student count |
| 18 | Display faculty name with number of courses taught |
| 19 | Display course name with maximum grade obtained |
| 20 | Display total courses offered in each department |
| 21 | Display semester-wise total students enrolled |
| 22 | Display courses having more than 2 students enrolled |

---

## How to Run

1. Open MySQL Workbench, SQL Developer, or any SQL client.
2. Connect to the database where the College schema already exists.
3. Open `Lab 06 Solution.sql`.
4. Run the queries one by one or execute the full script.

---

## Files Included

- Lab 06 Questions.pdf
- Lab 06 Solution.sql
- README.md
