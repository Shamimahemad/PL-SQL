drop trigger if EXISTS tr1;
delimiter $
CREATE TRIGGER tr1 AFTER DELETE on dept11 for each ROW
BEGIN
INSERT into d values (old.deptno,old.daname,old.loc,old.pwd,old.startedon);
end $
delimiter ; 