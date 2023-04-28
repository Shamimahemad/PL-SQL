  drop table if exists login;
   create table login(username varchar(50),password varchar(50),email varchar(50));
   drop procedure if exists addUser;
     delimiter $

       create procedure addUser(_username varchar(50),_password varchar(50),_email varchar(50))
        BEGIN
			declare exit handler for 1062 select 'user already present';
        insert into addUser values(_username,_password,_email);
	 select * from addUser;
        end $

   delimiter ;