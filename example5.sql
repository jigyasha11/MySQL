
create table EMPLOYEE
(
Empno int(5) primary key,
Empname varchar(20),
Empaddress varchar(50),
Dno int(5) references DEPARTMENT(Dno)
);

insert into EMPLOYEE(Empno,Empname,Empaddress,Dno)
values
(1,"Mr. Khanna","Panbazar",121),
(2,"Mr. Roy","Ganeshguri",123),
(3,"Mr. Sharma","Ambari",121),
(4,"Mr. Verma","Maligaon",124),
(5,"Mr. Das","Fancy Bazar",122);


create table DEPARTMENT
(
Dno int(5),
Dname varchar(20),
Dlocation varchar(20)
);

insert DEPARTMENT (Dno, Dname, Dlocation)
values
(121, "Finance Dapartment","First Floor"),
(122, "Administration Dapartment","Ground Floor"),
(123, "Accounts Dapartment","Second Floor"),
(124, "IT Dapartment","Third Floor");

select Empname, Empaddress
from EMPLOYEE, DEPARTMENT
where DEPARTMENT.Dno=EMPLOYEE.Dno
and Dname="Finance Department";

select Dlocation,Dname
from DEPARTMENT
where Dname="Administrative Department";

delete from EMPLOYEE
where Empno=3;

select * from EMPLOYEE
