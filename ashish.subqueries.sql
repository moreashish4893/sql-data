select * from student1;
select sid from student1 where sage between 22 and 26; 

-- (some)-  --(any) are the same
 
select * from student1 where sid >some(select sid from student1 where sid between 1 and 3);
---                               >some(1,2,3);                  
select * from student1 where sid >all(select sid from student1 where sid between 1 and 3);
select * from student1 where sid >any(select sid from student1 where sid between 1 and 3);
 
 ---- select * from student1 where sid> any(1,2,12);
 
 select * from student1 where sage= (select max(sage) from student1 where sage < (select max(sage)from student1));
  select * from  student1 where sage in(select sage from student1 where sid>3);
  select * from student1 where sage in(22,24,27);
  
  