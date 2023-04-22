


drop trigger if exists tr1;
delimiter $
create trigger tr1 before insert on dept for each ROW
BEGIN
	declare x int;
	select max(deptno) + 1 into x from dept;
	set new.deptno = x;
end $
delimiter ;








