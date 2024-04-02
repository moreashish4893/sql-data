select * from users;
select * from orders;


create table product(pid int primary key,pname varchar(20));
create table orders1(oid int primary key, uid int ,pid int,foreign key(uid) references users(uid),foreign key(pid)references product(pid));
desc orders1;
create table payment(pay_id int primary key,oid int, foreign key(oid)references orders1(oid));
desc payment;
insert into product values(400,'bike'),(401,'car'),(402,'mobile');

insert into orders1 values(100,2,400);

alter table payment add amount bigint;
 
 insert into payment values(1001,100,150000);
 insert into payment values(1002,101,1500000);
 
insert into orders1 values(101,1,401);

select users.uname,product.pname,payment.amount from users inner join orders1 on users.uid=orders1.uid inner join product on product.pid=orders1.pid
inner join payment on payment.oid=orders1.oid;
select * from payment;
select * from orders1;
select * from users;


-- ----------------joins----------------

create table college(cid int primary key auto_increment,cname char(20),location varchar(50));
select * from college;
desc college;
create table student1(sid int primary key auto_increment,sname varchar(20),sage int,scity varchar(50),cid int,foreign key(cid) references college(cid));
desc student1;
insert into college(cname,location) values('DY patil','mumbai'),('birla','kalyan');


insert into student1(sname,sage,scity,cid)values('ashish',28,'kalyan',2),('abhishek',26,'bhandup',1),('sanket',26,'thane',2),('saud',22,'kurla',1),('ani',24,null,null),('abhi',27,'cst',1),('atish',30,'murbad',2),('ketan',20,null,null),('sandip',23,'delhi',1);
select * from student1;
select *from college inner join student1 on student1.cid=college.cid;
select student1.sname, student1.scity as student_address,college.cname as college_name,college.location as college_address from college inner join student1 on student1.cid=college.cid;   


------- natural join-------------

select * from student1 natural join college;


-- left join----------

select * from student1;
select * from college;

select* from college left join student1 on student1.cid=college.cid;

-- right join---------
select* from college right join student1 on student1.cid=college.cid;

-- full outer join---------

select * from college left join student1 on student1.cid=college.cid

union 

select * from college right join student1 on student1.cid=college.cid;

-- self join--------

create table employee1(eid int primary key,ename char(20),designation char(20),mid int);
desc employee1;
insert into employee1 values(1,'ashish','ceo',null),(2,'sanket','dev',3),(3,'abhishek','bigboss',1),(4,'saud','dev',3),(5,'robert','dev',2);
select * from employee1;         

select e.ename as employee_name,e.designation,m.ename as Manager_Name,m.designation from employee1 as e  inner join employee1s  as m  on e.mid=m.eid;


select e.ename as employee_name,e.designation,m.ename as Manager_Name,m.designation from employee1 as e,employee1 as m where m.eid;

-- cross join----------

select * from student1;
select* from college;
select student1.sname,college.cname from student1 cross join college;
select student1.sname,college.cname from student1,college;



 



 
