--cursor example no 1

drop procedure if exists cur;
 delimiter $
 create procedure cur (in x int)
 BEGIN
   declare _ename,_job varchar(40);
   declare _empNO,_sal,_deptNO int;
   declare _hiredate date;

   declare c1 CURSOR for select empNO,ename ,job,hiredate,sal,deptno from emp;

   declare exit handler for 1329 select "NO MORE DATA";

   open c1;
     lbl:loop
          fetch c1 into _empNo,_ename,_JOb,_hiredate,_sal,_deptno;
          
           if _deptno = x then
               select _empNo,_ename,_JOb,_hiredate,_sal,_deptno;
           end if ;
     end loop lbl;
   close c1;
end $
delimiter ; 