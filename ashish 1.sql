create database ASHISH;
show databases;
use ASHISH; 
create table first (
id int,
name char(20),
age int,
city char(20)
);
show tables;
desc first;
show databases;
select * from employee;
drop table employee;
alter table employee drop age; 
create table student(
rollno int,
fname varchar(20),
lname varchar(20),
contact int UNIQUE KEY
);
show tables;
desc student;
alter table student add primary key(rollno);
desc student;
insert into student values(1,'ashish','more', 8308814000);
alter table student modify contact bigint unique;
select * from student;   
alter table student add column city varchar(30) default 'mumbai';
update student set fname = "ash" where rollno=2;
insert into student values(1,'ashish','more', 8308814000);
insert into student values(4,"saud","sayyad",2356789230),(5,"aniket","deshmukh",1239876504);
insert into student values(3,'robert','nadal', 1234567890);
alter table student auto_increment=100;
insert into student values(2,'abhishek','jagtap',9876543210);
truncate table student;
alter table student  modify rollno int auto_increment;
 insert into student(fname ,lname,contact) values ("ashish","more", 830881409);
insert into student(fname ,lname,contact) values ("abhi","jagtap", 9856789000);
insert into student(fname ,lname,contact) values ("gap","pap", 9856789400);
insert into student(fname ,lname,contact) values ("gman"," man", 9856889400);
insert into student(fname ,lname,contact) values ("gagan"," magan", 9853489400);
alter table student drop city;
delete from student where rollno =3;
delete from student;
 set sql_safe_updates =0;
 update student set fname = "ash",lname="sabale" where rollno=2;
 -- use descending order--------
 select * from student order by rollno desc;
select student.fname,student.lname from student;

-- as(alias) :temporary resplacement 

select student.fname as first_name,student.lname from student;
  
