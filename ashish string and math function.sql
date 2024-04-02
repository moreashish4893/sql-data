 select lower ('aShIsh');
select lower ('ASHISH');
select upper ('aShIsh');
select concat('welcome to idvedant', 'thane');
-- give space 
select concat('welcome to idvedant', ' thane');
   
select replace('welcome to itvedant thane','thane','mumbai');
select replace('welcome to itvedant thane','a','mumbai');
select length('my name is ashish');
select length (trim('      abc      '));   
select length (trim('      abc    abc     '));
select length (rtrim('      abc  abc   '));
select length (ltrim('      abc  abc   '));
select trim('      abc      ');
select substring('my name is ashish',12,6);

 
select * from studentdata;

select upper(department),upper(name) from studentdata; 


--  math function-----------


select abs(-11);
select abs(-11.1);
select ceil(12.34);
select ceil(12.84);
select ceil(12.0);
select ceil(12.01);

-- round---------------

select round(12.1);
select round(12.4);
select round(12.5);
  
  
  -- truncate----------
  
  select truncate(12.1111,2);
  
  -- mode-------- 
  
  select mod(10,4);
  
  -- floor------------
  
  select floor(10/4);
  
  -- power---------------
  
  select pow(2,2);
  select pow(10,2);
  
  
-- sqrt---------------

select sqrt(9);

select * from studentdata;
select name,department,round(marks) from studentdata;
select name,department,truncate(marks,3) from studentdata;
select name,department,round(marks) from studentdata;
select name,department,mod(marks,10) from studentdata;
select name,department,sqrt(marks) from studentdata where id = 3;

-- date function

select curdate();
select now();

select sysdate();
select last_day(curdate());
select last_day('2024-02-14');
select datediff('2024-03-20','2024-03-14');
-- y indicate only lst 2 digits of year and Y indicates whole digits
-- c indicates month
select date_format("2024-03-14","%d-%c-%Y");
-- we can use curdate() or direct date format
select date_format(curdate(),'%d-%c-%y'); 
select date_format(curdate(),'%D-%M-%y');
select date_format(curdate(),'%D-%m-%y');
select date_format(curdate(),'%d-%b-%y');
select date_format(curdate(),'%D-%b-%y');
select date_format(curdate(),'%a-%D-%b-%y');
select date_format(curdate(),'%W-%D-%b-%y');
select date_format(curdate(),'%W-%D-%M-%Y');


-- date time-----------------------
select date_format(now(),'%W-%D-%b-%y,%h:%i:%s');

--     

create table abc(
id int primary key, 
dob date not null,
age int check(age>=18));

insert into  abc values (1,'2024-03-14',18);

select * from abc;

select id,date_format(dob,'%W,%D,%M,%Y'),age from abc;

-- to remove bracket values use as:temporary replacement

select id,date_format(dob,'%W,%D,%M,%Y') as DOB,age from abc;


-- assignmnt(date-mth-string function)-----------------------

select date_format('1947-08-15','%W')as independence_day;
select substring('my name is Ashish',12);
select date_format('1995-08-04','%M')as born_month;
select concat('mysql',' is',' fun');
select replace('I love coding','coding','MySQL');














