-- Active: 1743911600637@@127.0.0.1@5432@university_db

-- create a table named "students" with the following columns: (student_id, student_name, age, email, frontend_mark, backend_mark, status)
create table students (student_id serial primary key , student_name VARCHAR(25), age INT, email VARCHAR(50), frontend_mark INT, backend_mark INT, "status" VARCHAR(10));

-- create a table named "courses" with the following columns: (course_id, course_name, credits)
create table courses (course_id SERIAL primary key, course_name VARCHAR(25), credits INT);

-- create a table named "enrollment" with the following columns: (enrollment_id, student_id, course_id)
create table enrollment (enrollment_id serial PRIMARY KEY, student_id INTEGER REFERENCES students(student_id), course_id INTEGER REFERENCES courses(course_id));

--insert 6 records into the "students" table
insert into students (student_name, age, email, frontend_mark, backend_mark, status) values
('Sameer', 21, 'sameer@example.com', 48, 60, NULL),
('Zoya', 23, 'zoya@example.com', 52, 58, NULL),
('Nabil', 22, 'nabil@example.com', 37, 46, NULL),
('Rafi', 24, 'rafi@example.com', 41, 40, NULL),
('Sophia', 22, 'sophia@example.com', 50, 52, NULL),
('Hasan', 23, 'hasan@gmail.com', 43, 39, NULL);

-- insert 4 records into the "courses" table
insert into courses (course_name, credits) values
('Next.js', 3),
('React.js', 4),
('Databases', 3),
('Prisma', 3);

-- insert 4 records into the "enrollment" table
insert into enrollment (student_id, course_id) values
(1, 1),
(1, 2),
(2, 1),
(3, 2);


--* queries begin here --


--? Query 1:Insert a new student record with the following details:  Name: YourName Age: YourAge Email: YourEmail Frontend - Mark:YourMark Backend - Mark:YourMark Status:NULL

insert into students (student_name, age, email, frontend_mark, backend_mark, status) VALUES ('Mahmud Hassan', 20, 'lehrimirza101@gmail.com', 60, 58, NULL);


--? Query 2: Retrieve the names of all students who are enrolled in the course titled 'Next.js'.

select student_name from enrollment as e INNER join students as s on s.student_id  = e.student_id INNER join courses as c on c.course_id = e.course_id WHERE course_name = 'Next.js';


--? Query 3: Update the status of the student with the highest total (frontend_mark + backend_mark) to 'Awarded'.

update students 
    set status = 'Awarded' where frontend_mark + backend_mark = (select max(frontend_mark + backend_mark) from students);


--? Query 4: Delete all courses that have no students enrolled.

delete from courses where course_id not in (select course_id FROM enrollment);

--? Query 5: Retrieve the names of students using a limit of 2, starting from the 3rd student.


select student_name from students OFFSET 2 limit 2;


--? Query 6: Retrieve the course names and the number of students enrolled in each course.

select course_name, count(*) as students_enrolled from enrollment e join courses c on c.course_id = e.course_id GROUP BY course_name; 

--? Query 7: Calculate and display the average age of all students.

select avg(age) as average_age from students;

--? Query 8: Retrieve the names of students whose email addresses contain 'example.com'.

select student_name from students where email like '%example.com';