Drop function if exists sumSalary;
delimiter $
#creating a function
create function sumSalary(_deptno int) returns INTEGER

DETERMINISTIC
BEGIN
     DECLARE s int;
	 
	 IF(SELECT deptno from emp where deptno=_deptno) THEN
	                    
						set s = (select sum(sal) from emp where deptno=_deptno);
	                    RETURN s;
	 
	 ELSE
	                    RETURN (SELECT "Department not found!");
	 end if;
	 
end $
delimiter ;