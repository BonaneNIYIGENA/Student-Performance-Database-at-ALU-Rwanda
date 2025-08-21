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
