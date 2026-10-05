USE school_management_db;
SHOW TABLES;
CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    subject VARCHAR(50) NOT NULL
);
CREATE TABLE classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);
CREATE TABLE classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);
CREATE TABLE subjects (
    subject_id INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL,
    description TEXT
);
CREATE TABLE student_subjects (
    student_id INT NOT NULL,
    subject_id INT NOT NULL,
    PRIMARY KEY (student_id, subject_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);
INSERT INTO students
(first_name, last_name, date_of_birth, gender, email, phone, admission_date)
VALUES
('John', 'Kamau', '2010-05-12', 'Male', 'john@example.com', '0712345678', '2024-01-10'),
('Mary', 'Wanjiku', '2011-08-20', 'Female', 'mary@example.com', '0723456789', '2024-01-10'),
('David', 'Otieno', '2010-11-03', 'Male', 'david@example.com', '0734567890', '2024-01-11');
INSERT INTO teachers
(first_name, last_name, email, phone, subject)
VALUES
('Peter', 'Mwangi', 'peter@school.com', '0700112233', 'Mathematics'),
('Jane', 'Achieng', 'jane@school.com', '0700223344', 'English'),
('Samuel', 'Kiptoo', 'samuel@school.com', '0700334455', 'Science');
INSERT INTO classes (class_name, teacher_id)
VALUES
('Grade 8A', 1),
('Grade 8B', 2),
('Grade 9A', 3);
INSERT INTO subjects (subject_name, description)
VALUES
('Mathematics', 'Study of numbers and problem solving'),
('English', 'Language and literature'),
('Science', 'Study of the natural world'),
('Computer Studies', 'Study of computers and technology');
INSERT INTO student_subjects (student_id, subject_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 4),
(3, 1),
(3, 3),
(3, 4);











