 use ashish;
create table table1(id int primary key,name varchar(20)); 
create table table2(id int primary key,name varchar(20));
insert into table1 (id,name) values(1,"ashish"),(2,"ashh"),(3,'abhishek'),(4,'abhi'),(5,'aniket');
insert into table2 (id,name) values(1,"atish"),(2,"ashh"),(3,'abhishek'),(4,'sanket'),(5,'akshay');
drop table table1;
drop table table2;
select * from table1; 
select * from table2;

select *from table1 union select * from table2;
select id from table1 union select id from table2;
select  * from table1 union  all select * from table2;
select * from table1 intersect select * from table2;
select * from table1 except select * from table2;
  
 
 
  
 