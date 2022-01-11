create table course
(id int primary key,
s_name varchar(20),
stu_id int foreign key references Students1 (id)
);

select * from Students1;

Insert into course
values(1,'BCA',1),
(2,'BE',2),
(3,'MCA',3);

create table teacher
(id int primary key,
t_name varchar(20),
stu_id int foreign key references course (id)
);

Insert into teacher
values(1,'abc',1),
(2,'xyz',2),
(3,'pqr',3);

select * from course;

/* inner join on three tables */

select name,email,s_name
from Students1 s 
inner join course c on 
s.id = c.stu_id 
inner join teacher t on 
c.stu_id= t.stu_id; 

/* left join on three tables */

SELECT name,email,s_name 
FROM students1 s
LEFT JOIN course c
ON   s.id = c.stu_id 
left join teacher t on
c.stu_id=t.stu_id;

/* right join on three tables */

SELECT name,age,s_name,t_name 
FROM students1 s
right JOIN course c
ON   s.id = c.stu_id 
right join teacher t on
c.stu_id=t.stu_id;

/* full join on three tables */

SELECT name,email,s_name,t_name
FROM students1 s
full JOIN course c
ON   s.id = c.stu_id 
full join teacher t on
c.stu_id=t.stu_id;
