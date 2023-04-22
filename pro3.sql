drop procedure if exists pro3;
delimiter $
create PROCEDURE pro3(in name varchar(40)) 
BEGIN
     declare b VARCHAR(40);
     declare x INTEGER;
     declare c VARCHAR(40);
     declare n VARCHAR(40);
     set x =1;
     set b = "";
     set c = "";
     set n = "";

     lbl:LOOP ---a7rgtns7877
             set b =SUBSTR(name,x,1);
             if(ASCII(b)>47 and ASCII(b)<58) THEN
                  set n = concat(n,b);
             ELSE
                  set c = concat(c,b);
             end if;
             set x = x + 1;

             if x>LENGTH(name) THEN
                  leave lbl;
             end if;

     end LOOP lbl;
     SELECT c;
     SELECT n;
end $
delimiter ;