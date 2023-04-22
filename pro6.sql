
drop procedure if exists pro6;
delimiter $
create PROCEDURE pro6(in name varchar(40)) 
BEGIN
     declare b VARCHAR(40);
     declare x INTEGER;
     declare alpha VARCHAR(40);
     
     set x =1;
     set b = "";
     set alpha = "";


     lbl:LOOP
             set b =SUBSTR(name,x,1);
             if(ASCII(b)>96 and ASCII(b)<123) THEN
                  set alpha = concat(alpha,b);
		     end if;
			 
             if(ASCII(b)>64 and ASCII(b)<89) THEN 
                  set alpha = concat(alpha,b);
             end if;
             set x = x + 1;

             if x>LENGTH(name) THEN
                  leave lbl;
             end if;

     end LOOP lbl;
     SELECT alpha;
    
end $
delimiter ;