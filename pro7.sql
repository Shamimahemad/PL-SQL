drop procedure if exists pro7;
delimiter $
create PROCEDURE pro7(in name varchar(40),in job varchar(40)) 
BEGIN
declare b VARCHAR(40);

declare x VARCHAR(40);
                                    

set b = "";
set x = "";

set b = concat(SUBSTR(name,1,1),'(',SUBSTR(name,2),')');
set x = concat(' is',' [',SUBSTR(job,1),']');

SELECT concat(b,x);
end $
delimiter ;