CREATE DATABASE DB;
Use DB;
CREATE TABLE Stu(
id int PRIMARY KEY,
name varchar(20),
age int DEFAULT 18
);

alter table Stu
add gender varchar(20);
alter table Stu
drop column gender;
ALTER TABLE Stu
ADD email varchar(50);

INSERT INTO Stu
VALUES(1,'Esha',21,'esha.devre@aimdek.com'),
(2,'Jagruti',22,'jagruti.suthar@aimdek.com'),
(3,'Jeel',23,'jeel.prajapati@aimdek.com'),
(4,'xyz',18,'isha.devre@aimdek.com');

Insert into stu(id,name,age)
values(5,'abc',13)

select * from Stu
where age=19

select * from Stu
order by age

select * from Stu
order by age desc

select * from Stu
where age=19 or age=18

select * from Stu
where email like '%aimdek.com';

select * from Stu
where age like '1_';

Select count(*), age from stu group by age

select distinct age from stu

/* Update */

UPDATE Students1
SET name = 'isha'
WHERE id=4;

/* delete */

DELETE FROM Students1 WHERE name='isha';
