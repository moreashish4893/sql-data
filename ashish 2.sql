use ashish;
create table studentdata(
id int auto_increment primary key,
name char(20),
department varchar(50),
marks  float,
paidfees bigint,
 attendance int
);
show tables;
desc studentdata;
 drop table studentdata;
insert into studentdata( name,department,marks,paidfees,attendance) values ("ashish","electronics",94,100000,90),("abhishek","computer",88,150000,70),("abhi","computer",85.6,50000,72),("sanket","mechanical",70.5,70000,92),("rohit","civil",67.9,80000,89),("gaurav","computer",78,94000,80),("robert","it",56.8,150000,86),("aniket","mba",78.6,87000,90),("mangesh","civil",68,45000,70);
select * from studentdata;
update studentdata set name="sarang" where id=2;
select * from studentdata where name like "a%";
select * from studentdata where name like "%v";
select * from studentdata where name like "a%h";
select * from studentdata where name like "_a%";
select * from studentdata where name like "%e_";
select * from studentdata where name like "a__i";
select * from studentdata where name like "a%k";

-- limit------------------

select * from studentdata;
select * from studentdata limit 5; 
select * from studentdata limit 7; 
-- we have found first high amount from table
-- distinct = avoid duplicate values
select distinct paidfees from studentdata order by paidfees desc limit 1;
select distinct paidfees from studentdata order by paidfees desc limit 1,1;
select distinct paidfees from studentdata order by paidfees desc limit 2,1;
select distinct paidfees from studentdata order by paidfees  limit 1;

select * from studentdata order by paidfees limit 1;

select * from studentdata where paidfees = (select distinct paidfees from studentdata order by paidfees desc limit 1);
     
select * from studentdata where id in (4,6,9);

select distinct paidfees from studentdata order by paidfees asc limit 1;

select * from studentdata where name in ('ashish'); 

update studentdata set paidfees = paidfees+(paidfees*0.15) where id in(3,7); 

select 1000*0.15; 
-- between 
select * from studentdata where id between 1 and 4;
select * from studentdata where id between 4 and 8;
select *from studentdata where paidfees between 50000 and 100000;


select * from studentdata where id not in (4,8);
delete from studentdata where id in (4,8);
select * from studentdata;

-- 

-- group by and having command--------------


select * from studentdata; 
select count(id),department from studentdata group by department; 

 select avg(marks),department from studentdata group by department;
 select count(id),department from studentdata group by department having avg(marks) >75;
 select * from studentdata where marks not in(88);
 select count(id) ,department from studentdata where id not in(1,2) group by department having count(id)>2;
    
 --
 --
 
 
   
 
 



 