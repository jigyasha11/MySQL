create table Student(
Roll_no int (5) primary key,
Student_name varchar (20),
Saddress varchar (50),
Date_of_admission date,
Class varchar (10),
Section varchar (5),
Contact_no varchar (15)
);


insert into Student(Roll_no,Student_name,Saddress,Date_of_admission,Class,Section,Contact_no)
values
(1,"Riya","Panbazar",'2006-06-01',"BCA 1st sem","1st sem","+919610102789"),
(2,"Dimpi","Ulubari",'2007-01-01',"BCA 2nd sem","2nd sem","+919900251421"),
(3,"Rohan","Panbazar",'2005-01-01',"BCA 2nd sem","2nd sem","+919214521110"),
(4,"Viraj","Paltanbazar",'2007-06-01',"BCA 3rd sem","3rd sem","+919123451123");

Delete from Student
where Roll_no=2;
Select * from Student;

Select * from Student
where Roll_no>1;

Select * from Student
where Date_of_admission<"2006-01-01";

update Student
set Student_name=Amar
where Roll_no=3;
	
select * from Student;  