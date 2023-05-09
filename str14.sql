drop procedure if exists str14;
delimiter $
create procedure str14(x int)
begin

declare digit int;
declare sum int default 0;

lb1:LOOP
 
 set digit=x%10;
 set x=floor(x/10);
 
 set sum=sum+digit;
 
 if x = 0 THEN 
 leave lb1;
 end if;
 
 end loop lb1;
 select sum;


end $
delimiter ;