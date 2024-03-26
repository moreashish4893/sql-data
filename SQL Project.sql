create table students(stud_id int primary key,name varchar(50),age int, gender varchar(10),contact_no varchar(20),email_id varchar(50));
desc students;
create table mental_health_status(status_id int primary key, stud_id int,date Date, status varchar(50),foreign key(stud_id) references students(stud_id));
desc mental_health_status;
create table symptoms(symptom_id int primary key, symptom_name varchar(50));
alter table symptoms add stud_id int,add foreign key(stud_id)references students(stud_id);
desc symptoms;
create table appointments(appointment_id int primary key,stud_id int,date Date, counselor_name varchar(50),foreign key(stud_id) references students(stud_id));
desc appointments;
create table medications(medication_id int primary key,stud_id int,medication_name varchar(100),dosage varchar(50),foreign key(stud_id)references students(stud_id));
desc medications;
insert into students(stud_id,name,age,gender,contact_no,email_id)values(1,'Ashish',28,'male',123456,'ashi@gmail,com'),
(2,'Abhishek',24,'male',234561,'abhi@gmail.com'),(3,'Neha',30,'female',876954,'neha@gmail.com'),(4,'Sanket',26,'male',654983,'sankt@gmail.com'),
(5,'Tina',22,'female',543276,'tina@gmail.com');
select * from students;
insert into mental_health_status(status_id,stud_id,date,status)values(1,1,'2020-03-23','stable'),(2,2,'2020-05-12','improving'),(3,3,'2020-06-08','not stable'),
(4,4,'2020-07-10','stable'),(5,5,'2020-08-20','deteriorated');
select * from mental_health_status;
insert into symptoms(symptom_id,symptom_name,stud_id)values(1,'Anger Issues',1),(2,'Depression',2),(3,'Mental Illness',3),(4,'Anxiety',4),(5,'Mood disorder',5);
select * from symptoms;

insert into appointments(appointment_id,stud_id,date,counselor_name)values(1,1,null,null),(2,2,'2020-05-14','Dr.Smith'),(3,3,'2020-06-10','Dr.MaX'),
(4,4,null,null),(5,5,'2020-08-21','Dr.Alex');
select * from appointments;
insert into medications(medication_id,stud_id,medication_name,dosage)values(1,1,null,null),(2,2,'Xanax','2mg'),(3,3,'Opex','1mg'),(4,4,null,null),(5,5,'Linox','5mg');
select * from medications; 

  -- joining students and mental health status ---- 
  
select s.name,m.status from students as s inner join mental_health_status as m on s.stud_id=m.stud_id; 

-- joining students,mental health status and symptoms-------
select s.name,symp.symptom_name from students as s inner join symptoms as symp on s.stud_id=symp.stud_id;
select s.name,symp.symptom_name,m.status from students as s inner join mental_health_status as m on s.stud_id=m.stud_id inner join symptoms as symp on m.stud_id=symp.stud_id;
select s.name as student_name,symp.symptom_name, m.status,m.date as status_date,a.date as appointment_date,a.counselor_name,md.medication_name,md.dosage from students as s inner join 
mental_health_status as m on s.stud_id=m.stud_id inner join symptoms as symp on m.stud_id=symp.stud_id inner join appointments as a on s.stud_id=a.stud_id
inner join medications as md on s.stud_id=md.stud_id;
select s.name as student_name,md.medication_name  from students as s inner join medications as md on s.stud_id=md.stud_id;


select s.name as student_name,m.status, md.medication_name  from students as s inner join mental_health_status as m on s.stud_id=m.stud_id
 inner join medications as md on m.stud_id=md.stud_id where medication_name is null;



	