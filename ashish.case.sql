-- case statement ------------

select * from studentdata;
select max(marks) from studentdata;
select min(marks)from studentdata;
select name,
case
when marks>=50 and marks<=70 then 'c'
when marks>=70 and  marks<=85 then 'b'
when marks>=85 and marks<=100 then 'a'
end as grades
from studentdata; 