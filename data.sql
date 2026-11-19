INSERT INTO Department (dept_name) VALUES
('Software Engineering'),
('Computer Science'),
('Artificial Intelligence'),
('Data Science'),
('Cybersecurity');
INSERT INTO Course (course_code, course_title, credit_units, description, dept_id) VALUES
('SEN307', 'Database Systems', 3,
'Relational database design, SQL queries, normalization, transactions and indexing using
MySQL.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('SEN381', 'Software Architecture', 3,
'Architectural styles, design patterns, microservices and how to structure large software
systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('COS301', 'Operating Systems', 3,'Processes, threads, CPU scheduling, memory management and file systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('COS307', 'Computer Networks', 3,
'TCP/IP, routing, switching, LAN and WAN design and network protocols.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('AIN301', 'Introduction to Artificial Intelligence', 3,
'Intelligent agents, search algorithms, knowledge representation and reasoning.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('AIN305', 'Machine Learning', 3,
'Supervised and unsupervised learning, neural networks, deep learning and model
evaluation.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('AIN307', 'Natural Language Processing', 3,
'Text processing, word embeddings, language models, sentiment analysis and chatbots.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('DTS301', 'Data Visualization and Analytics', 2,
'Exploratory data analysis, charts, dashboards and telling stories with data.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('DTS305', 'Big Data Technologies', 3,
'Distributed storage and processing of very large datasets with Hadoop and Spark.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('CYB301', 'Network Security', 3,
'Firewalls, cryptography, intrusion detection and protecting networks from attacks.',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));
SELECT d.dept_name, COUNT(c.course_id) AS courses
FROM Department d LEFT JOIN Course c ON d.dept_id = c.dept_id
GROUP BY d.dept_name;

SELECT dept_id, dept_name FROM Department;
SELECT course_id, course_code FROM Course;

INSERT INTO Lecturer (staff_no, full_name, email, dept_id) VALUES
('VUA/ST/101', 'Dr Ngozi Adebayo',      'n.adebayo@vua.edu.ng',   1),
('VUA/ST/102', 'Dr Tunde Olawale',      't.olawale@vua.edu.ng',   1),
('VUA/ST/103', 'Dr Ifeoma Nwachukwu',   'i.nwachukwu@vua.edu.ng', 2),
('VUA/ST/104', 'Dr Bala Suleiman',      'b.suleiman@vua.edu.ng',  2),
('VUA/ST/105', 'Dr Yetunde Alabi',      'y.alabi@vua.edu.ng',     3),
('VUA/ST/106', 'Dr Emeka Obi',          'e.obi@vua.edu.ng',       3),
('VUA/ST/107', 'Dr Halima Danjuma',     'h.danjuma@vua.edu.ng',   4),
('VUA/ST/108', 'Dr Olumide Fashola',    'o.fashola@vua.edu.ng',   4),
('VUA/ST/109', 'Dr Chinwe Okonkwo',     'c.okonkwo@vua.edu.ng',   5),
('VUA/ST/110', 'Dr Sadiq Abubakar',     's.abubakar@vua.edu.ng',  5);

select * from Lecturer

INSERT INTO Student (matric_no, full_name, gender, date_of_birth, dept_id) VALUES
('20250101', 'Blessing Oyelaran',  'F', '2003-01-17', 1),
('20250102', 'Kelechi Uzodinma',   'M', '2004-07-23', 2),
('202411395', 'mahmud kamaldeen',  'M', '2007-07-07', 3),
('20250104', 'Tobiloba Adesanya',  'M', '2002-10-05', 3),
('20250105', 'Chidinma Eze',       'F', '2004-03-29', 4),
('20250106', 'Yusuf Aliyu',        'M', '2001-12-14', 5),
('20250107', 'Folake Adewale',     'F', '2005-06-08', 1),
('20250108', 'Ifeanyi Nwosu',      'M', '2003-09-21', 2),
('20250109', 'Halima Bello',       'F', '2002-04-02', 3),
('20250110', 'Segun Oduola',       'M', '2004-11-30', 4),
('20250111', 'Nneka Uche',         'F', '2005-01-25', 5),
('20250112', 'Abdulrahman Sani',   'M', '2001-08-19', 1),
('20250113', 'Temitope Oladipo',   'F', '2003-05-13', 2),
('20250114', 'Chukwuemeka Obi',    'M', '2004-02-06', 3),
('20250115', 'Zara Musa',          'F', '2002-07-27', 4),
('20250116', 'Oluwaseun Ajayi',    'M', '2005-10-09', 5),
('20250117', 'Adaeze Okonkwo',     'F', '2003-12-18', 1),
('20250118', 'Bashir Lawal',       'M', '2001-06-04', 2),
('20250119', 'Grace Ogbonna',      'F', '2004-09-22', 3),
('20250120', 'Ibrahim Yakubu',     'M', '2002-03-15', 4);

SELECT * FROM Student;


SELECT student_id, matric_no, full_name FROM Student;

SELECT course_id, course_name FROM Course;

SELECT lecturer_id, full_name FROM Lecturer;

DESCRIBE Course;

SELECT * FROM Course;

SELECT student_id, matric_no, full_name FROM Student;
SELECT lecturer_id, full_name FROM Lecturer;
INSERT INTO Enrolment (student_id, course_id) VALUES
-- Course 1: 8 students
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),

(1, 2),
(3, 2),
(5, 2),
(9, 2),
(10, 2),


(2, 3),
(4, 3),
(6, 3),
(11, 3),
(12, 3),


(3, 4),
(7, 4),
(13, 4),
(14, 4),


(5, 5),
(8, 5),
(15, 5),
(16, 5),

(2, 6),
(9, 6),
(12, 6),
(17, 6),

(4, 7),
(10, 7),
(18, 7),

(6, 8),
(11, 8),
(13, 8),

(7, 9),
(14, 9),

(15, 10),
(16, 10);

INSERT INTO CourseAllocation (course_id, lecturer_id) VALUES
(1, 31),
(1, 32),
(2, 33),
(3, 34),
(4, 35),
(5, 36),
(6, 37),
(7, 38),
(8, 39),
(9, 40),
(10, 31);

SELECT COUNT(*) AS total_enrolments
FROM Enrolment;

SELECT s.student_id, s.full_name
FROM Student s
LEFT JOIN Enrolment e
ON s.student_id = e.student_id
WHERE e.student_id IS NULL;

SELECT c.course_id, c.course_code,
       COUNT(e.student_id) AS total_students
FROM Course c
JOIN Enrolment e
ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_code
HAVING COUNT(e.student_id) > 5;

SELECT course_id,
       COUNT(lecturer_id) AS total_lecturers
FROM CourseAllocation
GROUP BY course_id
HAVING COUNT(lecturer_id) > 1;
SELECT matric_no, full_name, dept_id FROM Student WHERE matric_no = '20231234';
UPDATE Student SET dept_id = 2 WHERE matric_no = '20231234';
SELECT matric_no, full_name, dept_id FROM Student WHERE matric_no = '20231234';

INSERT INTO Department (dept_name) VALUES ('Library and Information Science');
INSERT INTO Student (matric_no, full_name, dept_id)
VALUES ('20239999', 'Transfer Student',
(SELECT dept_id FROM Department WHERE dept_name = 'Library and Information
Science'));

DELETE FROM Department WHERE dept_name = 'Library and Information Science';
