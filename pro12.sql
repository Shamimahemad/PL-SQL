drop procedure if exists getallstudent;
delimiter $$
create procedure getallstudent()
begin
declare v_ID INT;
declare v_namefirst,v_namelast VARCHAR(45);
declare v_dob DATE;
declare v_emailID VARCHAR(128);
declare c1 CURSOR FOR SELECT * FROM student;
declare EXIT HANDLER FOR NOT FOUND SELECT "No more student found";
open c1;
lbl:loop
FETCH c1 INTO v_ID,v_namefirst,v_namelast,v=_dob,v_emailID;
SELECT v_ID,v_namefirst,v_namelast,v_dob,v_emailID;
end loop lbl;
CLOSE c1;
end $$
delimiter ;
