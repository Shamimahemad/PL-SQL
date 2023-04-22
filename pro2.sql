drop procedure if exists pro2;
delimiter $
create PROCEDURE pro2(in name varchar(40)) 
BEGIN
declare b VARCHAR(40);

declare x INTEGER;
set x =1;
set b = "";

lbl:LOOP

set b = concat(b,SUBSTR(name,x,1),',');

set x = x + 1;

if x>LENGTH(name) THEN
leave lbl;
end if;

end LOOP lbl;
SELECT b;
end $
delimiter ;