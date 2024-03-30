create database enrollment_project;
use enrollment_project;

CREATE TABLE course (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(50) NOT NULL,
  branches VARCHAR(50) NOT NULL,
  course_fees INT NOT NULL
);

CREATE TABLE student(
	student_id INT PRIMARY KEY,
	first_name varchar(50) NOT NULL,
 	last_name varchar(25) NOT NULL,
 	email varchar(25) UNIQUE,
 	course_id INT NOT NULL,
 	yoj DATE NOT NULL,
  	FOREIGN KEY(course_id) REFERENCES course(course_id)
 );
 
create table instructor (
  instructor_id INT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(50) UNIQUE,
  branches varchar(50) NOT NULL,
  course_id INT NOT NULL,
  FOREIGN KEY(course_id) REFERENCES course(course_id)
);

CREATE TABLE enrollment (
  enrollment_id INT PRIMARY KEY,
  student_id INT NOT NULL,
  course_id INT NOT NULL ,
  enrollment_date DATE NOT NULL,
  FOREIGN KEY (student_id) REFERENCES student(student_id),
  FOREIGN KEY (course_id) REFERENCES course(course_id)
);

insert into course values (1, "Data Science", "Chennai", 75000),
                          (2, "Machine Learning", "Madurai", 60000),
  			  (3, "Data Analytics", "Salem", 58000),
 			  (4, "UI / UX", "Chennai", 20000),
 			  (5, "Full Stack Development", "Coimbatore", 30000),
 			  (6, "Data Structures and Algorithms", "Trichy", 40000),
 			  (7, "Cybersecurity Fundamentals", "Bangalore",  60000),
 			  (8, "Software Testing", "Chennai", 50000),
 			  (9, "Artificial Intelligence", "Chennai", 45000),
 			  (10, "Web Development Fundamentals", "Bangalore", 60000),
			  (11, "Data Science", "Coimbatore", 75000),
			  (12, "Machine Learning", "Trichy", 60000),
  			  (13, "Data Analytics", "Chennai", 58000),
 			  (14, "UI / UX", "Coimbatore", 20000),
 			  (15, "Full Stack Development", "Salem", 30000),
 			  (16, "Data Structures and Algorithms", "Bangalore", 40000),
 			  (17, "Cybersecurity Fundamentals", "Chennai",  60000),
 			  (18, "Software Testing", "Coimbatore", 50000),
 			  (19, "Artificial Intelligence", "Bangalore", 45000),
 			  (20, "Web Development Fundamentals", "Coimbatore", 60000),
			  (21, "Web Development Fundamentals", "Chennai", 60000),
			  (22, "Data Science", "Bangalore", 75000),
			  (23, "Machine Learning", "Chennai", 60000),
  			  (24, "Data Analytics", "Coimbatore", 58000),
 			  (25, "UI / UX", "Salem", 20000),
 			  (26, "Full Stack Development", "Chennai", 30000),
 			  (27, "Data Structures and Algorithms", "Chennai", 40000),
 			  (28, "Cybersecurity Fundamentals", "Coimbatore",  60000),
 			  (29, "Software Testing", "Madurai", 50000),
 			  (30, "Artificial Intelligence", "Madurai", 45000),
              (31, "Embedded Programming", "Chennai", 75000),
			  (32, "Python Programming", "Madurai", 60000),
  			  (33, "Data Structures", "Salem", 58000),
 			  (34, "Aptitute for Interview", "Chennai", 20000),
 			  (35, "Soft Skills for Interview Preparation", "Coimbatore", 30000),
 			  (36, "Marketing Basics", "Trichy", 40000);

insert into student values (45, "Anand", "Kumar", "abc123@gmail.com", 2, '2023-07-04'),
							(90, "Pandeeswari", "A", "anand28@gmail.com", 1, '2024-01-04'),
							(21,"Pavi", "Kannan", "kannan30@gmail.com", 10, '2022-03-29'),
							(7,"Ravi", "kumar", "raviab2@gmail.com", 3,'2023-08-21'), 
							(3,"Prem", "S", "prem123@gmail.com", 6, '2022-12-09'),
							(5, "Arun", "Kumar", "kumar@gmail.com", 2,'2020-09-01'),
							(12, "Devi", "Selvam", "selvam@gmail.com", 12,'2019-07-15'),
							(11, "Suresh", "Balaji", "suresh@gmail.com", 6,'2021-03-20'),
							(20, "Anitha", "Karthik", "anitha@gmail.com", 30, '2018-11-10'),
							(9, "Laksh", "Manoj", "manoj@gmail.com", 9, '2019-08-28'),
							(4, "Thiyak", "Surya", "surya@gmail.com", 3,'2024-07-01'),
                            (100, "Raja", "Ganesh", "ganesh@GMAIL.COM", 6, '2023-01-01'),
							(59, "Saratha", "Venkatesan", "saratha@gmail.com", 15, '2023-02-01'),
							(25, "Jeya", "Bala", "bala@gmail.com",29, '2023-03-01'),
							(13, "Anushya", "Manikandan", "mani@gmail.com", 8, '2024-11-01'),
							(37, "Akilan", "Varun" , "varun@gmail.com", 22, '2024-08-01'),
							(53, "Thirumalai", "Chandran", "malai@gmail.com", 17, '2023-09-01'),
							(33, "Aaradhana", "Siva", "siva@gmail.com", 20, '2024-02-01' ),
							(10, "Santhosh", "J", "santhosh@gmail.com", 5, '2023-10-01' ),
							(43, "Aravan", "Prasanth", "ara@gmail.com", 21, '2023-05-01'),
							(29, "Parthiban", "P", "parathi@gmail.com", 12,'2023-04-01' ),
							(47,"Jeyanthi", "lal", "lal@gmail.com",11, '2023-11-01'),
							(103,"Chithra", "devi", "devi@gmail.com", 18, '2023-08-01'),
							(78,"Divya", "Murthy", "divya2gmail.com", 7, '2024-03-01'),
							(18,"Subash", "M", "suba@gmail.com", 14, '2023-07-01'),
							(36,"Vijay", "kanth", "vijay@gmail.com", 26, '2022-09-23'),
							(69, "Santhi", "Ramesh", "santhi@gmail,com", 22, '2024-01-01'),
							(16, "Balaji", "Dev", "dev@gmail.com", 3, '2023-12-01'),
							(50, "Meenakshi", "T", "meena@gmail.com", 4, '2023-10-21'),
							(108, "Saravanan", "Kutty", "kutty@gmail.com", 7, '2022-04-19'),
							(35, "Anbu", "raj", "raj@gmail.com", 21, '2021-07-09');

INSERT INTO instructor (instructor_id, first_name, last_name, email, branches, course_id) VALUES
(1, 'Aravind', 'Subramanian', 'aravind.subramanian@gmail.com', 'Chennai', 1),
(2, 'Aarthi', 'Rajagopal', 'aarthi.rajagopal@gmail.com', 'Coimbatore', 5),
(3, 'Karthik', 'Balasubramanian', 'karthik.balasubramanian@gmail.com', 'Bangalore', 7),
(4, 'Deepika', 'Venkatesan', 'deepika.venkatesan@gmail.com', 'Salem', 3),
(5, 'Pradeep', 'Ranganathan', 'pradeep.ranganathan@gmail.com', 'Madurai', 2),
(6, 'Ananya', 'Krishnan', 'ananya.krishnan@gmail.com', 'Chennai', 9),
(7, 'Aditya', 'Iyer', 'aditya.iyer@gmail.com', 'Coimbatore', 20),
(8, 'Nithya', 'Srinivasan', 'nithya.srinivasan@gmail.com', 'Bangalore', 19),
(9, 'Vishal', 'Rajaram', 'vishal.rajaram@gmail.com', 'Salem', 33),
(10, 'Meera', 'Chandrasekaran', 'meera.chandrasekaran@gmail.com', 'Madurai', 30),
(11, 'Siddharth', 'Venkataraman', 'siddharth.venkataraman@gmail.com', 'Chennai', 23),
(12, 'Sneha', 'Manoharan', 'sneha.manoharan@gmail.com', 'Coimbatore', 35),
(13, 'Rahul', 'Ganesan', 'rahul.ganesan@gmail.com', 'Bangalore', 19),
(14, 'Anjali', 'Sundaram', 'anjali.sundaram@gmail.com', 'Salem', 15),
(15, 'Varun', 'Rajendran', 'varun.rajendran@gmail.com', 'Madurai', 2),
(16, 'Shreya', 'Narayanan', 'shreya.narayanan@gmail.com', 'Chennai', 1),
(17, 'Arvind', 'Ramakrishnan', 'arvind.ramakrishnan@gmail.com', 'Coimbatore', 5),
(18, 'Sanjana', 'Govindarajan', 'sanjana.govindarajan@gmail.com', 'Bangalore', 7),
(19, 'Vivek', 'Balaji', 'vivek.balaji@gmail.com', 'Salem', 3),
(20, 'Lavanya', 'Muthukumar', 'lavanya.muthukumar@gmail.com', 'Madurai', 29),
(21, 'Krishna', 'Chandran', 'krishna.chandran@gmail.com', 'Chennai', 27),
(22, 'Divya', 'Sankaran', 'divya.sankaran@gmail.com', 'Coimbatore', 28),
(23, 'Rohan', 'Venkatachalam', 'rohan.venkatachalam@gmail.com', 'Bangalore', 19),
(24, 'Priya', 'Ramanathan', 'priya.ramanathan@gmail.com', 'Salem', 15),
(25, 'Anushka', 'Balasundaram', 'anushka.balasundaram@gmail.com', 'Madurai', 2),
(26, 'Akash', 'Rajagopalan', 'akash.rajagopalan@gmail.com', 'Chennai', 21),
(27, 'Megha', 'Krishnamurthy', 'megha.krishnamurthy@gmail.com', 'Coimbatore', 18),
(28, 'Akhil', 'Venkataramani', 'akhil.venkataramani@gmail.com', 'Bangalore', 10),
(29, 'Shalini', 'Sundararajan', 'shalini.sundararajan@gmail.com', 'Salem', 15),
(30, 'Rajesh', 'Sivaraman', 'rajesh.sivaraman@gmail.com', 'Madurai', 32);

INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date) VALUES
(1, 45, 1, '2024-03-20'),
(2, 90, 2, '2024-03-21'),
(3, 21, 3, '2024-03-22'),
(4, 7, 2, '2024-03-23'),
(5, 3, 2, '2024-03-24'),
(6, 5, 1, '2024-03-25'),
(7, 45, 3, '2024-03-26'),
(8, 90, 4, '2024-03-27'),
(9, 20, 5, '2024-03-28'),
(10, 9, 6, '2024-03-29'),
(11, 4, 7, '2024-03-30'),
(12, 100, 8, '2024-03-31'),
(13, 59, 9, '2024-04-01'),
(14, 13, 3, '2024-04-02'),
(15, 45, 4, '2024-04-03'),
(16, 53, 5, '2024-04-04'),
(17, 33, 6, '2024-04-05'),
(18, 10, 7, '2024-04-06'),
(19, 43, 8, '2024-04-07'),
(20, 29, 9, '2024-04-08'),
(21, 47, 10, '2024-04-09'),
(22, 103, 11, '2024-04-10'),
(23, 78, 1, '2024-04-11'),
(24, 18, 2, '2024-04-12'),
(25, 69, 3, '2024-04-13'),
(26, 69, 4, '2024-04-14'),
(27, 16, 5, '2024-04-15'),
(28, 50, 6, '2024-04-16'),
(29, 108, 12, '2024-04-17'),
(30, 35, 13, '2024-04-18');

-- 1. unique enrollment count i.e how many users purchased my course 
select course_id, count(distinct student_id) as enrollment_count
from enrollment
group by course_id;

-- 2. retrive the course name not enrolled by student
SELECT c.course_name, c.branches
FROM course c
LEFT JOIN enrollment e ON c.course_id = e.course_id
WHERE e.enrollment_id IS NULL;

-- 3. courseId,course_name,course_branch,instructorId,first name
SELECT c.course_id, i.course_id as instructor_course_id, c.course_name, c.branches AS course_branch, i.instructor_id, i.first_name AS instructor_first_name, i.last_name AS instructor_last_name
FROM course c
INNER JOIN instructor i ON c.course_id = i.course_id;

-- 4. student_details with courseId
select s.*, e.course_id
from student s
join enrollment e on s.student_id = e.student_id;

-- 5. display the student based on no max course they purchased
select s.student_id, s.first_name, s.last_name, count(e.course_id) as course_count
from student s
join enrollment e ON s.student_id = e.student_id
group by s.student_id, s.first_name, s.last_name
order by course_count desc
limit 1;

-- 6. rank for that student based on course fees
select s.student_id, s.first_name, s.last_name,
       rank() over (order by sum(c.course_fees) desc) as StudentRank
from student s
join enrollment e on s.student_id = e.student_id
join course c on e.course_id = c.course_id
group by s.student_id, s.first_name, s.last_name;
