create database final_student_enrollment;

use final_student_enrollment;

CREATE TABLE course (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(50) NOT NULL,
  branches VARCHAR(50),
  course_fees INT NOT NULL
);

create table student(
  student_id INT PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(25) NOT NULL,
  email varchar(25) UNIQUE,
  course_id INT NOT NULL,
  yoj DATE NOT NULL,
  FOREIGN KEY(course_id) REFERENCES course(course_id)
);
 
create table instructor(
  instructor_id int primary key,
  first_name varchar(50) ,
  last_name varchar(50) ,
  email varchar(50) ,
  branches varchar(50) 
  );


CREATE TABLE enrollment (
  enrollment_id INT PRIMARY KEY,
  student_id INT NOT NULL,
  course_id INT NOT NULL ,
  enrollment_date DATE NOT NULL,
  FOREIGN KEY (student_id) REFERENCES student(student_id),
  FOREIGN KEY (course_id) REFERENCES course(course_id)
);


INSERT INTO course(course_id,course_name,branches,course_fees) 
values (1, "Data Science", "DS", 75000),
	          (2, "Machine Learning", "ML", 60000),
  			  (3, "Data Analytics", "DA", 58000),
 			  (4, "UI / UX", "GRAPHICS", 20000),
 			  (5, "Full Stack Development", "FSD", 30000),
 			  (6, "Mechanical Engineering", "ME", 40000),
 			  (7, "Cybersecurity Fundamentals", "CSec",  60000),
 			  (8, "Software Testing", "ST", 50000),
 			  (9, "Artificial Intelligence", "AI", 45000),
 			  (10, "Web Development Fundamentals", "WEB", 60000),
			  (11, "Electrical Engineering", "EEE", 75000),
			  (12, "Civil Engineering", "CE", 90000),
  			  (13, "Information technology", "IT", 58000),
 			  (14, "Environmental Engineering", "EnvE", 20000),
 			  (15, "Software Engineering", "SE", 30000),
 			  (16, "Aerospace Engineering", "AE", 40000),
 			  (17, "Chemical Engineering", "CHE",  60000),
 			  (18, "Biomedical Engineering", "BME", 100000),
 			  (19, "Commerce computer Science", "COM", 45000),
 			  (20, "Biotechnology", "BTECH", 60000),
			  (21, "Network Administration", "NA", 60000),
			  (22, "Computer Science", "CS", 75000),
			  (23, "Master of Education", "EDU", 60000),
  			  (24, "Master of Arts in Psychology ", "Psychology", 58000),
 			  (25, "Master of Arts in Economics", "Economics", 20000),
 			  (26, "Engineering Mathematics", "MATHS", 30000),
 			  (27, "Control Systems", "Csys", 40000),
 			  (28, "Materials Science and Engineering", "MSE",  60000),
 			  (29, "Fluid Mechanics", "FM", 50000),
 			  (30, "Engineering Design and Innovation", "DI", 45000),
              (31,  "Bio Maths", "maths",  20000),
              (32,  "Custom Designing", "custom", 30000),
              (33,  "Beautician", "beauty",28000),
              (34,  "Tamil Literacy", "tamil", 23000),
              (35,  "Banking Technology", "banking", 30000);



insert into student(student_id,first_name,last_name,email,course_id,yoj)
 values(701, "Anand", "Kumar", "abc123@gmail.com", 2, '2023-07-04'),
							(702, "Pandeeswari", "A", "anand28@gmail.com", 1, '2024-01-04'),
							(703,"Pavi", "Kannan", "kannan30@gmail.com", 9, '2022-03-29'),
							(704,"Ravi", "kumar", "raviab2@gmail.com", 5,'2023-08-21'), 
							(705,"Prem", "S", "prem123@gmail.com", 10, '2022-12-09'),
							(706, "Arun", "Kumar", "kumar@gmail.com", 2,'2020-09-01'),
							(707, "Devi", "Selvam", "selvam@gmail.com", 4,'2019-07-15'),
							(708, "Suresh", "Balaji", "suresh@gmail.com", 6,'2021-03-20'),
							(709, "Anitha", "Karthik", "anitha@gmail.com", 28, '2018-11-10'),
							(710, "Laksh", "Manoj", "manoj@gmail.com", 9, '2019-08-28'),
							(711, "Thiyak", "Surya", "surya@gmail.com", 3,'2024-07-01'),
                            (712, "Raja", "Ganesh", "ganesh@GMAIL.COM", 6, '2023-01-01'),
							(713, "Saratha", "Venkatesan", "saratha@gmail.com", 15, '2023-02-01'),
							(714, "Jeya", "Bala", "bala@gmail.com",28, '2023-03-01'),
							(715, "Anushya", "Manikandan", "mani@gmail.com", 18, '2024-11-01'),
							(716, "Akilan", "Varun" , "varun@gmail.com", 24, '2024-08-01'),
							(717, "Thirumalai", "Chandran", "malai@gmail.com", 19, '2023-09-01'),
							(718, "Aaradhana", "Siva", "siva@gmail.com", 20, '2024-02-01' ),
							(719, "Santhosh", "J", "santhosh@gmail.com", 3, '2023-10-01' ),
							(720, "Aravan", "Prasanth", "ara@gmail.com", 24, '2023-05-01'),
							(721, "Parthiban", "P", "parathi@gmail.com", 12,'2023-04-01' ),
							(722,"Jeyanthi", "lal", "lal@gmail.com",11, '2023-11-01'),
							(723,"Chithra", "devi", "devi@gmail.com", 18, '2023-08-01'),
							(724,"Divya", "Murthy", "divya2gmail.com", 7, '2024-03-01'),
							(725,"Subash", "M", "suba@gmail.com", 14, '2023-07-01'),
							(726,"Vijay", "kanth", "vijay@gmail.com", 26, '2022-09-23'),
							(727, "Santhi", "Ramesh", "santhi@gmail,com", 22, '2024-01-01'),
							(728, "Balaji", "Dev", "dev@gmail.com", 3, '2023-12-01'),
							(729, "Meenakshi", "T", "meena@gmail.com", 4, '2023-10-21'),
							(730, "Saravanan", "Kutty", "kutty@gmail.com", 7, '2022-04-19');




INSERT INTO instructor (instructor_id, first_name, last_name, email, branches) VALUES
(61, 'Aravind', 'Subramanian', 'aravind.subramanian@gmail.com', 'DS'),
(62, 'Aarthi', 'Rajagopal', 'aarthi.rajagopal@gmail.com', 'DA'),
(63, 'Karthik', 'Balasubramanian', 'karthik.balasubramanian@gmail.com', 'ML'),
(64, 'Deepika', 'Venkatesan', 'deepika.venkatesan@gmail.com', 'AI'),
(65, 'Pradeep', 'Ranganathan', 'pradeep.ranganathan@gmail.com', 'SE'),
(66, 'Ananya', 'Krishnan', 'ananya.krishnan@gmail.com', 'CE'),
(67, 'Aditya', 'Iyer', 'aditya.iyer@gmail.com', 'COM'),
(68, 'Nithya', 'Srinivasan', 'nithya.srinivasan@gmail.com', 'EnvE'),
(69, 'Vishal', 'Rajaram', 'vishal.rajaram@gmail.com', 'Csys'),
(70, 'Meera', 'Chandrasekaran', 'meera.chandrasekaran@gmail.com', 'FSD'),
(71, 'Siddharth', 'Venkataraman', 'siddharth.venkataraman@gmail.com', 'EEE'),
(72, 'Sneha', 'Manoharan', 'sneha.manoharan@gmail.com', 'DI'),
(73, 'Rahul', 'Ganesan', 'rahul.ganesan@gmail.com', 'MSE'),
(74, 'Anjali', 'Sundaram', 'anjali.sundaram@gmail.com', 'FM'),
(75, 'Varun', 'Rajendran', 'varun.rajendran@gmail.com', 'CHE'),
(76, 'Shreya', 'Narayanan', 'shreya.narayanan@gmail.com', 'MATHS'),
(77, 'Arvind', 'Ramakrishnan', 'arvind.ramakrishnan@gmail.com', 'ECONOMICS'),
(78, 'Sanjana', 'Govindarajan', 'sanjana.govindarajan@gmail.com', 'EDU'),
(79, 'Vivek', 'Balaji', 'vivek.balaji@gmail.com', 'CS'),
(80, 'Lavanya', 'Muthukumar', 'lavanya.muthukumar@gmail.com', 'NA'),
(81, 'Krishna', 'Chandran', 'krishna.chandran@gmail.com', 'PSYCHOLOGY'),
(82, 'Divya', 'Sankaran', 'divya.sankaran@gmail.com', 'AE'),
(83, 'Rohan', 'Venkatachalam', 'rohan.venkatachalam@gmail.com', 'ME'),
(84, 'Priya', 'Ramanathan', 'priya.ramanathan@gmail.com', 'ST'),
(85, 'Anushka', 'Balasundaram', 'anushka.balasundaram@gmail.com', 'BTECH'),
(86, 'Akash', 'Rajagopalan', 'akash.rajagopalan@gmail.com', 'IT'),
(87, 'Megha', 'Krishnamurthy', 'megha.krishnamurthy@gmail.com', 'BME'),
(88, 'Akhil', 'Venkataramani', 'akhil.venkataramani@gmail.com', 'GRAPICS'),
(89, 'Shalini', 'Sundararajan', 'shalini.sundararajan@gmail.com', 'WEB'),
(90, 'Rajesh', 'Sivaraman', 'rajesh.sivaraman@gmail.com', 'CSec');


INSERT INTO enrollment (enrollment_id, student_id, course_id, enrollment_date) VALUES
(101, 701, 1, '2024-03-20'),
(102, 702, 2, '2024-03-21'),
(103, 703, 3, '2024-03-22'),
(104, 704, 4, '2024-03-23'),
(105, 705, 5, '2024-03-24'),
(106, 706, 6, '2024-03-25'),
(107, 707, 7, '2024-03-26'),
(108, 708, 8, '2024-03-27'),
(109, 709, 9, '2024-03-28'),
(110, 710, 10, '2024-03-29'),
(111, 711, 11, '2024-03-30'),
(112, 712, 12, '2024-03-31'),
(113, 713, 13, '2024-04-01'),
(114, 714, 14, '2024-04-02'),
(115, 715, 15, '2024-04-03'),
(116, 716, 16, '2024-04-04'),
(117, 717, 17, '2024-04-05'),
(118, 718, 18, '2024-04-06'),
(119, 719, 19, '2024-04-07'),
(120, 720, 20, '2024-04-08'),
(121, 721, 21, '2024-04-09'),
(122, 722, 22, '2024-04-10'),
(123, 723, 23, '2024-04-11'),
(124, 724, 24, '2024-04-12'),
(125, 725, 25, '2024-04-13'),
(126, 726, 26, '2024-04-14'),
(127, 727, 27, '2024-04-15'),
(128, 728, 28, '2024-04-16'),
(129, 729, 29, '2024-04-17'),
(130, 730, 30, '2024-04-18');


-- select * from course;
-- select *from student;
-- select *from instructor;
-- select *from enrollment;


-- query answer 
-- 1. unique enrollment count i.e how many users purchased my course 
select count(distinct student_id) as unique_enrollment_count
from enrollment;

-- 2. retrive the course name not enrolled by student

select distinct c.course_Name
from course c
left join enrollment e on c.course_id = e.course_id
where e.student_id is null;

-- 3.courseId,course_name,course_branch,instructorId,first name

select c.course_id, c.course_name, c.branches , i.instructor_Id, i.first_name
from course c
inner join instructor i on c.branches = i.branches order by course_id;

-- 4.student_details with courseId

select s.student_id, s.first_name, s.last_name, s.email, s.yoj, e.course_id
from student s
join enrollment e on e.student_id = s.student_id;
                     -- (or)

select s.*, e.course_id
from student s
join enrollment e on e.student_id = s.student_id;

 -- 5. display the student based on no max course they purchased
 
select s.student_id, s.first_name, s.last_name, s.email
from student s
join enrollment e on s.student_id = e.student_id
group by s.student_id
order by count(e.course_id) desc
limit 1;


-- 6. rank for that student based on course fees

select s.first_name, s.last_name,
  rank() over (order by sum(c.course_fees) desc) as stud_rank
 from student s
 join enrollment e on s.student_id = e.student_id
 join course c on e.course_id = c.course_id
 group by s.student_id
 order by stud_rank;

select * from enrollment;


