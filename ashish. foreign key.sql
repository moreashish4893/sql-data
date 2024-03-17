create table users(uid int primary key auto_increment,uname varchar(100));
desc users;    
insert into users(uname) values('ashish'),('abhishek'),('sanket'); 
select * from users;   
create table orders(oid int primary key  auto_increment, pname varchar(50),uid int,foreign key(uid) references users(uid));
desc orders;
insert into orders(pname,uid) values('milk',1),('butter',1),('cheese',3);

select * from orders; 
insert into orders(pname,uid) values('eggs',2);  
drop table orders;