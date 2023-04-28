 drop table if exists LOG;
    create table LOG;
    drop procedure if exists checkUser;
    delimiter $

     create PROCEDURE checkUser(_email VARCHAR(50))

    BEGIN
        if EXISTS(SELECT * from login where email=_email) THEN
	
	SELECT username, password from login where email=_email;
	
	ELSE
	insert into log(curr_date, curr_time,message) values(curdate(),curtime(),'username,password');
	 select * from checkUser;
	end if; 
    end $
   delimiter ;