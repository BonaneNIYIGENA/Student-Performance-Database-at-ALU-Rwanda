-- Student Performance Database for ALU Rwanda
-- Created for Linux and Python courses tracking

-- Create the database
CREATE DATABASE student_performance_db;
USE student_performance_db;

-- Create students table
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    intake_year INT NOT NULL
);

-- Create linux_grades table
CREATE TABLE linux_grades (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50) DEFAULT 'Linux',
    student_id INT,
    grade_obtained DECIMAL(5,2) CHECK (grade_obtained BETWEEN 0 AND 100),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
