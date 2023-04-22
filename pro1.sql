drop procedure if exists pro1;
delimiter $
create PROCEDURE pro1(in name varchar(40)) 
BEGIN
declare x INTEGER;
set x =1;
lbl:LOOP
select SUBSTR(name,x,1);
set x = x + 1;

if x>LENGTH(name) THEN
leave lbl;
end if;
end LOOP lbl;
end $
delimiter ;