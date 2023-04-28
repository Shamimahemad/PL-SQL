drop table if exists deptLOG;
drop trigger if exists insertDEPT;

delimiter $
CREATE TABLE deptLOG(id int primary KEY auto_increment,cDAte date,cTime TIME,message varchar(60),
                     deptno int,dname varchar(40),loc VARCHAR(40),pwd VARCHAR(40));
					 

CREATE TRIGGER insertDEPT AFTER INSERT on dept for each ROW
BEGIN
INSERT into deptLOG(new.id,new.cDAte,new.cTime,new.message,
                     new.deptno,new.dname,new.loc,new.pwd);
end $
delimiter ; 
