set serveroutput on;
-- select * from EMPLOYEES;

set serveroutput on;
declare 
    -- creating and declareing a variable name 'msg'
    msg varchar(30) := 'hello world ashutosh';
BEGIN

    dbms_output.PUT_LINE(msg);
END;

declare 
    -- creating and declareing a variable name 'msg'
    msg varchar(30) := 'hello world ashutosh';
BEGIN
    -- concat variable with sring
    dbms_output.PUT_LINE(msg || ' ' || 'friend of Ram');
END;