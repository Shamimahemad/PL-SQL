


drop procedure if exists pro5;
delimiter $
create PROCEDURE pro5(in name varchar(40)) 
BEGIN
     declare b VARCHAR(40);
     declare x INTEGER;
     declare vowels int;
     declare digit int;
	 declare whiteSpace int;
     set x =1;
     set b = "";
     set vowels = 0;
     set digit = 0;
	 set whiteSpace =0;

     lbl:LOOP
             set b =SUBSTR(name,x,1);
             if(ASCII(b)=97 or ASCII(b)=101 or ASCII(b)=105 or ASCII(b)=111 or ASCII(b)=117) THEN
                  set vowels = vowels + 1;
		     end if;
			 if(ASCII(b)>47 and ASCII(b)<58) THEN
                  set digit = digit + 1;
			 end if;	  
             if(ASCII(b)=32) THEN
			      set whiteSpace = whiteSpace + 1;
			 end if;
             set x = x + 1;

             if x>LENGTH(name) THEN
                  leave lbl;
             end if;

     end LOOP lbl;
     SELECT vowels;
     SELECT digit;
	 SELECT whiteSpace;
end $
delimiter ;