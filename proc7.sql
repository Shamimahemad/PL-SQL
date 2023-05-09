create procedure proc7
is
v_name varchar(10):='Sohel'
v_country varchar(16):='India';
begin
dbms_output.put_line('HELLO I am: '||v_name||'from'||v_country);
end;
