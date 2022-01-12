BEGIN TRANSACTION 
INSERT INTO Students1(id,name)
values(7,'isha');

select * from Students1;

rollback transaction;

/*      commit        */

BEGIN TRANSACTION 
INSERT INTO Students1(id,name)
values(8,'Trupti');

COMMIT TRANSACTION;



