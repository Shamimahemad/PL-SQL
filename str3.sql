drop procedure if exists str3;
delimiter $
create procedure str3(x varchar(120))
begin
declare l int ;
declare c int;
declare pos int;
declare ch varchar(30) default "";

declare str2 varchar(40) default "";
set l=length(X);
set c=1;
set ch= substr(x,c,1);
set pos= instr(x," ");

lb1:LOOP
set c=c+1;
if c >=pos THEN
leave lb1;
end if;

set str2= concat(str2,substr(x,c,1));
end loop lb1;

select ch;
select pos;
select str2;
select concat(ch,"(",str2,")"," is",substr(x,pos,l));

end $
delimiter ;