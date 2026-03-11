# 🔗 Lab 05 :- SQL JOIN Lab (Data Retrieval from Multiple Tables)

A practical demonstration of **SQL INNER JOIN operations** using a relational **College Database Schema**.

This project shows how meaningful information can be retrieved by combining multiple related tables using **primary–foreign key relationships**.

---

## 📌 Objective

The purpose of this lab is to understand how relational databases store data across multiple tables and how **JOIN operations** retrieve combined information without modifying the database.

Using SQL `INNER JOIN`, we can merge data from different tables such as:

- **Student**
- **Course**
- **Faculty**
- **Enrollment**
- **Department**

---

## 🗂 Database Schema

The database represents a simplified **College Management System**.

### Tables Included

| Table | Description |
|------|-------------|
| Department | Stores department details |
| Faculty | Stores faculty information |
| Student | Stores student data |
| Course | Stores course information |
| Enrollment | Stores which student is enrolled in which course |

---

## 🧩 Table Relationships

Tables are connected through **Primary Keys and Foreign Keys**.

Student                                                                                           
│ Student_ID                                                                                    
▼                                                                                     
Enrollment                                                                                                                
│ Course_ID                                                                                    
▼                                                                                                                 
Course                                                                                                                
│ Faculty_ID                                                                                     
▼                                                                                                                 
Faculty                                                                                                                
│ Dept_ID                                                                                                                 
▼                                                                                                                 
Department                                                                                                                


These relationships allow SQL queries to combine information from multiple tables using JOIN operations.

---

## ⚙️ Technologies Used

- **Oracle Database 21c Express Edition**
- **SQL (Structured Query Language)**

---

## 🔎 Key SQL Concepts Covered

### 1️⃣ INNER JOIN

`INNER JOIN` returns only rows where matching values exist in both tables.

```sql
SELECT s.StudentID, s.Name, e.CourseID
FROM Student s
INNER JOIN Enrollment e ON s.StudentID = e.StudentID;
```
This query retrieves the student names and the courses they are enrolled in.

---

### 2️⃣ JOIN Conditions
JOIN conditions define how two tables are related.

Example:

```sql
Student.StudentID = Enrollment.StudentID
```
---

### 3️⃣ Table Aliases

Aliases simplify queries and improve readability.

Example:

-Student → s
-Enrollment → e
-Course → c
Using aliases:

```sql
SELECT c.CourseName, c.Credits, f.Name AS FacultyName
FROM Course c
INNER JOIN Faculty f ON c.FacultyID = f.FacultyID;
```

---

### 4️⃣ Multi-Table JOIN
SQL allows joining multiple tables in a single query.

Example relationship chain:
```sql
Student → Enrollment → Course
```
This enables retrieval of combined information such as:
```sql
Student Name + Course Name + Semester + Grade
```

---

### 📊 Lab Tasks Covered

The lab contains 20 SQL queries organized into sections.

## Part A — Student & Enrollment

- Student names with enrolled courses
- Student names with semester information
- Student grades per course

## Part B — Course & Faculty

- Courses with faculty names
- Courses taught by a specific faculty
- Faculty designation with courses

## Part C — Student Course Enrollment

- Students with course names
- Students with semester details
- Courses taken by a specific student

## Part D — Department Queries

- Students with department and course
- Department-wise course lists
- Faculty with department names

## Part E — Filtering & Sorting

- Students belonging to a specific department
- Sorted student course lists
- Courses sorted by credits

## Part F — Analytical Queries

- Number of students per course
- Courses taught by each faculty
- Department-wise student counts
- Maximum grade per course

---

### 🧠 Key Learning Outcomes

After completing this lab you will understand:
- Why relational databases store data in multiple tables
- How **INNER JOIN** combines related tables
- The role of primary and foreign keys
- Writing multi-table SQL queries
- Using aliases, filtering, sorting, and aggregation

---

### 🚀 How to Run

1. Open Oracle SQL*Plus or Oracle SQL Developer

2. Run the schema file
```sql
@"Lab 02/Lab 02 Solution.sql"
```
3. Execute the JOIN queries
```sql
@"Lab 05 Solution.sql"
```

---

### 🎯 Conclusion
JOIN operations are fundamental in relational databases because real-world data is distributed across multiple related tables.

Understanding INNER JOIN and relational keys allows us to reconstruct meaningful information from normalized database structures.

---
