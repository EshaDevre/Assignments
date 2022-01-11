 /* Stored procedures */
 create procedure getallstudents
 as 
 select * from students1
 go;
 exec getallstudents

 create procedure getage(
 @age int
 )
 as
 begin 
 select * from Students1
 where age>20;
 end


 create procedure ageCount(
 @age int,
 @count int output
 )
 as
 begin 
 select @count = COUNT(*) from Students1
 where age = @age;
 end

 DECLARE @count int
 exec ageCount 
 @age =20,
 @count = @count output
 select @count as 'number of students';

 /* creating view in database */

 create view stu1 as
 select * from Students1
 where email like '%aimdek.com';

 select * from stu;

 drop view stud;
 drop view stu;