## Student Performance Database


Pre-Class Activity to help us practice designing and querying databases.
This project focuses on tracking how students at ALU Rwanda are performing in Linux and Python courses. Using MySQL, 
we built a database with sample data and ran a series of queries to analyze student performance.

## Objective

1.To build a functional MySQL database that:

2.Tracks and analyzes performance in Linux and Python courses.

3.Supports querying for insights such as low-performing students,
 course participation, average scores, and top performers.

Database Structure

## Database Name :student_performance_db

The database contains three tables:

# 1.students

student_id (Primary Key)

student_name

intake_year

# 2.linux_grades

course_id (Primary Key)

course_name (Default: 'Linux')

student_id (Foreign Key referencing students)

grade_obtained (0–100)

# 3.python_grades

course_id (Primary Key)

course_name (Default: 'Python')

student_id (Foreign Key referencing students)

grade_obtained (0–100)

## How to Run This Project

# 1.Clone:
https://github.com/BonaneNIYIGENA/Student-Performance-Database-at-ALU-Rwanda.git

# 2.Open MySQL using tool (e.g., MySQL Workbench, phpMyAdmin, or the command line).

# 3.Run the SQL Script:
 Load the student-performance-db.sql file.
 Execute the entire script to:
   Create the database and tables
   Insert sample data
   Run all required queries

# 4.View the Results:
 Check the output of each query to analyze student performance.
