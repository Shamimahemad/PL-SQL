create table deptLOG1(id int auto_increment,cDate date,cTime time,message varchar(1000) ,deptno int,dname varchar(100),loc varchar(100),pwd varchar(10),primary key(id));

drop trigger if exists insertDept;
delimiter $
create trigger insertDept after insert on dept for each row
begin
declare x int;
select ifnull(max(id),0)+1 into x from dept;

insert into dept values(x,curdate(),curtime(),"record inserted which is inserted in dept",new.deptno,new.dname,new.loc,new.pwd);

end $
delimiter ; 