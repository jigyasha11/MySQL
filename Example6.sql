create table STUDENT
(
    Roll_no INT(5) primary key,
    Sname varchar(10),
    Semester varchar(10),
    Course_no int(5) references COURSE(Course_no),
    Course_name varchar(20)
);

insert STUDENT(Roll_no,Sname,Semester,Course_no,Course_name)
values 
(1,"Namita","BSc 1st sem",123),
(2,"Neha","BSc 3rd sem",123),
(3,"Sima","BA 1st sem",121),
(4,"Parinita","BCA 3rd sem",120),
(5,"Jiya","BCom 1st sem",122);


create table COURSE
(
    Course_no int(5) primary key,
    Course_name varchar(20)
);


insert into COURSE(Course_no,Course_name)
VALUES
(120,"BCA"),
(121,"BA"),
(122,"BCom"),
(123,"BSc");

select * from STUDENT;

Select * from COURSE;

Select Sname
from STUDENT,COURSE
where COURSE.Course_no = STUDENT.Course_no
And Course_name= "BCA";

Select Roll_no,Sname
from STUDENT,COURSE
where COURSE.Course_no= STUDENT.Course_no
and Course_name="BCA"
and Semester="BCA 3rd sem";

SELECT c.Course_no, c.Course_name,count(*)
from COURSE as c, STUDENT as s
where c.Course_no=s.Course_no
Group by c.Course_no,c.Course_name
having count(*)>1;

Select c.Course_no, c.course_name,count(*)
from COURSE as c, STUDENT as s
where c.Course_no=s.Course_no
group by c.Course_no, c.course_name;