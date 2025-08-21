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

-- Create python_grades table
CREATE TABLE python_grades (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50) DEFAULT 'Python',
    student_id INT,
    grade_obtained DECIMAL(5,2) CHECK (grade_obtained BETWEEN 0 AND 100),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- Insert  data into students table (15 students)
INSERT INTO students (student_name, intake_year) VALUES
('Alice Uwase', 2022),
('Bob Mugisha', 2022),
('Claire Imanishimwe', 2023),
('David Niyonzima', 2022),
('Emma Mukamana', 2023),
('Frank Habimana', 2022),
('Grace Uwimbabazi', 2023),
('Henry Twahirwa', 2022),
('Irene Mutoni', 2023),
('James Nkusi', 2022),
('Karen Uwase', 2023),
('Leo Ndayisaba', 2022),
('Mia Uwimana', 2023),
('Nathan Iradukunda', 2022),
('Olivia Nyirahabimana', 2023);

-- Insert sample data into linux_grades table
INSERT INTO linux_grades (student_id, grade_obtained) VALUES
(1, 85.5), (2, 42.0), (3, 78.0), (4, 91.0), (5, 67.5),
(6, 35.0), (7, 88.0), (8, 49.5), (9, 72.0), (10, 95.0),
(11, 58.0), (12, 81.5), (13, 45.0), (14, 76.0), (15, 63.5);

-- Insert sample data into python_grades table
-- Some students take only one course (mix of Linux and Python only)
INSERT INTO python_grades (student_id, grade_obtained) VALUES
(1, 92.0), (2, 38.0), (3, 85.0), (4, 89.0), 
(6, 42.0), (7, 91.0), (8, 51.0), 
(10, 97.0), (11, 62.0), (12, 84.0),
(14, 79.0), (15, 68.0);