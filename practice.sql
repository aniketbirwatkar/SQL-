use sales; 

drop table students; 

create table students (id int, 
first_name varchar (25), 
last_name varchar (50), 
Age int); 

desc students; 

insert into students (id, first_name, last_name, Age) values (1,"Aniket", "Birwatkar", 24) , (2, "Aditya", "Birwatkhar", 23), (3, "Sachin", "Chakor",26); 

select * from students;

alter table students
add primary key (id); 

select * from students; 

desc students; 

Alter table students
add  qualifications varchar (50); 

select * from students; 

Update students 
set qualifications = "Mechanical Engineer" where id = 1; 
update students set qualifications = "Software Engineer" where id = 2; 
update students set qualifications = "Jobless" where id = 3; 

select * from students; 

alter table students
add grade varchar (25); 

select * from students ; 

update students 
set grade = 'A+' where id= 1; 

select * from students ; 

Update students 
set grade = 
Case 
when id = 2 then 'A' 
when id = 3 then 'B'
else Null
end
where id in (2,3); 

select * from students;

alter table students 
add hobbies varchar (40); 

select * from students; 

SET SQL_SAFE_UPDATES= 0; 
update students 
set hobbies =  "Cricket" where first_name = "Aniket"; 

select * from students; 

update students 
set hobbies = 
case 
when first_name = 'Aditya' then 'Reading'
when first_name = 'Sachin' then 'Creator'
else hobbies 
end ; 

select * from students ; 

insert into students values (4, 'Pratik', 'Vaidya', 27, 'Mechanical Engineer', 'A+', 'Blogging'), (5, 'Vishal', 'Lagishetty', 28, 'Production Engineer', 'B+', 'Table Tennis'); 
select * from students; 

Delete from students where id = 5; 
select * from students; 

Delete from students where id = 4; 
select * from students; 

insert into students values (4, 'Pratik', 'Vaidya', 27, 'Mechanical Engineer', 'A+', 'Blogging'), (5, 'Vishal', 'Lagishetty', 28, 'Production Engineer', 'B+', 'Table Tennis'); 
select * from students; 

alter table students
drop column hobbies; 

select * from students; 

alter table students
drop column grade; 

select * from students; 

alter table students 
add grade varchar (25); 
alter table students 
add hobbies varchar (25); 

select * from students; 

Update students 
set grade = 
case 
when id = 1 then 'A+'
when id = 2 then 'A'
when id = 3 then 'B+'
when id = 4 then 'C'
when id = 5 then 'D'
else null
end; 

select * from students; 

Update students
set hobbies = 
case 
when id = 1 then 'Cricket'
when id = 2 then 'Blogging'
when id = 3 then 'Football'
when id = 4 then 'Reading'
when id = 5 then 'UseLess'
else null
end; 

select * from students; 

delete from students 
where id = 5; 

delete from students
where id = 4; 

select * from students; 
insert into students values (4, 'Pratik', 'Vaidya', 27, 'Mechanical Engineer', 'A+', 'Blogging'), (5, 'Vishal', 'Lagishetty', 28, 'Production Engineer', 'B+', 'Table Tennis'); 
select * from students; 

alter table students
drop column hobbies; 

select * from students; 

alter table students 
add hobbies varchar (25); 

Update students
set hobbies = 
case 
when id = 1 then 'Cricket'
when id = 2 then 'Blogging'
when id = 3 then 'Football'
when id = 4 then 'Reading'
when id = 5 then 'UseLess'
else null
end; 

select * from students ; 

update students
set grade = 'A'
WHERE ID = 3; 

select * from students; 

update students
set Age = 27
where first_name = 'Vishal'; 

select * from students; 

alter table students 
add primary key (id); 

desc students; 

alter table students 
drop primary key ; 

desc students; 

alter table students 
add primary key (id); 

desc students; 

SHOW INDEX FROM students;


alter table students 
add constraint uc_constraint unique (first_name, last_name); 

select * from students ; 

update  students
set first_name = 'Shubham' where id = 2; 

select * from students; 

update students 
set first_name = 'Aniket' where id = 2; 

select * from students; 

update students
set last_name = 'Birvatkar' where id = 2; 

select * from students; 

alter table students 
drop constraint uc_constraint ; 

desc students; 

alter table students
add constraint uc_constraint unique (hobbies); 

alter table students
drop index uc_constraint ; 

desc students; 

alter table students
modify column Age float; 

desc students; 

alter table students
modify column Age int; 

desc students; 

alter table students
add constraint uc_unique unique (hobbies); 

desc students; 

alter table students
modify column Age int not null; 

desc students; 

select * from students; 

select *
from students 
where Age> 25; 

select * from students; 

select * from students 
where age<22 or age>25; 

select * from students; 

select * from students where age < 23 or  age >25; 

select * from students where age <= 23 or age > 25; 
select * from students; 

select * from students where age between 23 and 27; 

select * from students order by Age; 

select * from students order by Age desc; 

create table orders (order_id int, order_name varchar (30),
order_number int, 
id int, 
foreign key (id) references students (id) 
); 

select* from orders; 

insert into orders (order_id, order_name, order_number,id) values (1,'Pizza', 2, 1); 

select * from students as sd inner join orders as od on sd.id=od.id; 
select * from students as sd left join orders as od on sd.id=od.id; 
select * from students as sd right join orders as od on sd.id=od.id; 
select * from students as sd full  join orders as od on sd.id=od.id; 

select * from students as sd left join orders as od on sd.id=od.id
UNION ALL
select * from students as sd right join orders as od on sd.id=od.id;

use sales; 
select * from students; 

select count(Age) from students; 

select * from students; 
select count(distinct Age) from students; 

select * from students; 
select avg(Age) from students;
select sum(Age) from students; 

select Age, count(*) from students group by Age; 
SELECT COUNT(*) FROM students  WHERE Age = 27;

select Age, count(*) FROM STUDENTS group by Age; 

select * from students as sd inner join orders as od on sd.id=od.id; 
select * from students as sd left join orders as od on sd.id=od.id; 

select id from students where id in(select id from orders); 
select id from students where id in(Select id from orders); 

set sql_safe_updates=0; ## To disable the safe mode. 
update students
Set Age = 25
where first_name = 'Aniket'; 

select * from students; 


delete from students where id = 5; 
select * from students; 

Create index index_No on students (first_name); 

select * from students; 

desc students; 



show INDEX FROM Students; 

select * from students; 

create view try as
select first_name , last_name , Age from students; 

select * from students; 

DELIMITER //

CREATE PROCEDURE practice_sql()
BEGIN
    SELECT first_name, last_name, Age FROM students;
END //

DELIMITER ;

select count(Age) from students; 
select count(distinct Age)from students; 

select Avg(Age)from students; 

select sum(Age) from students; 

select Age, count(*) from students group by Age; 

select * from students; 


select id from students where id in(select id from orders); 





