create table robot1(id1 int primary key, name1 varchar(20));
desc robot1; 
create table robot2(id2 int primary key,name2 varchar(20),id1 int,foreign key(id1)references robot1(id1)  on update cascade);
create table robot2(id2 int primary key,name2 varchar(20),id1 int,foreign key(id1)references robot1(id1)  on delete cascade);
desc robot2;
insert into robot1 values(1,'aaa'),(2,'bbb'),(3,'ccc');
insert into robot2 values( 1,'dddd',1),(2,'eee',3),(3,'fff',3);

update robot1 set name1 ='Bapu' where id1= 3;
delete from robot1 where id1=3;
delete from robot1 where id1=1;
select * from robot1;

select * from robot2;

delete from robot1 where id1=2;
set foreign_key_checks=0;
 
   