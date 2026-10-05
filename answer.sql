-- ============================================
-- WEEK 1 DATABASE ASSIGNMENT
-- SCHOOL MANAGEMENT SYSTEM
-- Author: Edwin Jacob
-- ============================================

-- Create the database
CREATE DATABASE school_management;

-- Select the database
USE school_management;


-- ============================================
-- 1. Create Students Table
-- ============================================

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    date_of_birth DATE,
    phone VARCHAR(20)
);


-- ============================================
-- 2. Create Teachers Table
-- ============================================

CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    subject VARCHAR(100),
    phone VARCHAR(20)
);


-- ============================================
-- 3. Create Classes Table
-- ============================================

CREATE TABLE classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL,
    teacher_id INT,
    room_number VARCHAR(20),

    FOREIGN KEY (teacher_id)
        REFERENCES teachers(teacher_id)
);


-- ============================================
-- 4. Create Subjects Table
-- ============================================

CREATE TABLE subjects (
    subject_id INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL,
    teacher_id INT,

    FOREIGN KEY (teacher_id)
        REFERENCES teachers(teacher_id)
);


-- ============================================
-- 5. Insert Students
-- ============================================

INSERT INTO students
(first_name, last_name, gender, date_of_birth, phone)
VALUES
('John', 'Ero', 'Male', '2010-05-12', '0712345678'),
('Mary', 'Akinyi', 'Female', '2011-03-20', '0723456789'),
('Peter', 'Lokwale', 'Male', '2010-11-08', '0734567890'),
('Nancy', 'Lobei', 'Female', '2011-07-15', '0745678901');


-- ============================================
-- 6. Insert Teachers
-- ============================================

INSERT INTO teachers
(first_name, last_name, subject, phone)
VALUES
('David', 'Ekitela', 'Mathematics', '0711111111'),
('Grace', 'Lomor', 'English', '0722222222'),
('James', 'Erupe', 'Agriculture', '0733333333');


-- ============================================
-- 7. Insert Classes
-- ============================================

INSERT INTO classes
(class_name, teacher_id, room_number)
VALUES
('Form 1A', 1, 'Room 101'),
('Form 2A', 2, 'Room 102'),
('Form 3A', 3, 'Room 103');


-- ============================================
-- 8. Insert Subjects
-- ============================================

INSERT INTO subjects
(subject_name, teacher_id)
VALUES
('Mathematics', 1),
('English', 2),
('Agriculture', 3);


-- ============================================
-- 9. Display All Tables
-- ============================================

SHOW TABLES;


-- ============================================
-- 10. Display Students
-- ============================================

SELECT * FROM students;


-- ============================================
-- 11. Display Teachers
-- ============================================

SELECT * FROM teachers;


-- ============================================
-- 12. Display Classes
-- ============================================

SELECT * FROM classes;


-- ============================================
-- 13. Display Subjects
-- ============================================

SELECT * FROM subjects;


-- ============================================
-- 14. Display Classes and Their Teachers
-- ============================================

SELECT
    classes.class_name,
    classes.room_number,
    teachers.first_name,
    teachers.last_name
FROM classes
JOIN teachers
ON classes.teacher_id = teachers.teacher_id;


-- ============================================
-- 15. Display Subjects and Their Teachers
-- ============================================

SELECT
    subjects.subject_name,
    teachers.first_name,
    teachers.last_name
FROM subjects
JOIN teachers
ON subjects.teacher_id = teachers.teacher_id;


-- ============================================
-- END OF ASSIGNMENT
-- ============================================
