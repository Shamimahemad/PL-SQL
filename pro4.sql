


drop procedure if exists pro4;
delimiter $
create PROCEDURE pro4(in name varchar(40)) 
BEGIN
     declare b VARCHAR(40);
     declare x INTEGER;
     declare UpperCase VARCHAR(40);
     declare smallerCase VARCHAR(40);
     set x =1;
     set b = "";
     set UpperCase = "";
     set smallerCase = "";

     lbl:LOOP
             set b =SUBSTR(name,x,1);
             if(ASCII(b)>96 and ASCII(b)<123) THEN
                  set smallerCase = concat(smallerCase,b);
		     end if;
			 
             if(ASCII(b)>64 and ASCII(b)<89) THEN 
                  set UpperCase = concat(UpperCase,b);
             end if;
             set x = x + 1;

             if x>LENGTH(name) THEN
                  leave lbl;
             end if;

     end LOOP lbl;
     SELECT UpperCase;
     SELECT smallerCase;
end $
delimiter ;