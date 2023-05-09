drop procedure if exists pro6;
delimiter $
create procedure pro6(str varchar(20))
begin 
declare x int;
set x=length(str);
lbl:loop
select left(right(str,x),1);
set x=x-1;
if x<=0 then 
leave lbl;
end if;
end loop lbl;
end $
delimiter ;
