create table PLAYER
(
Roll_no int (5) Primary key,
Pname varchar (20)
);

create table MATCH
(
Match_no int (5) primary key,
Roll_no int (5) references PLAYER(Roll_no),
Match_date date,
Opponent varchar (20)
);

insert into PLAYER(Roll_no,Pname)
values
(10,"Vijay Amrithraj"),
(20,"Leander Paes"),
(30,"Mahesh Bhupati"),
(40,"Sania Mirza");

insert into MATCH(Match_no,Roll_no,Match_data,Opponent)
values
(1,20,'2008-07-01',"Washington"),
(2,30,'2008-01-12',"Sampras"),
(3,20,'2008-08-12',"Borg"),
(4,30,'2008-03-20',"Vijay");


Select * from Player EQUI JOIN Match ON Player.Roll_no = Match.Roll_no;

Select * from Player FULL OUTER JOIN Match ON Player.Roll_no = Match.Roll_no;