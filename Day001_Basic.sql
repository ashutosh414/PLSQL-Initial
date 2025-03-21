set serveroutput on;
-- select * from EMPLOYEES;

set serveroutput on;
declare
    -- creating and declareing a variable name 'msg'
    msg varchar(30) := 'hello world ashutosh';
BEGIN
    -- Print the line
    dbms_output.PUT_LINE(msg);
END;

declare
    -- creating and declareing a variable name 'msg'
    msg varchar(30) := 'hello world ashutosh';
BEGIN
    -- concat variable with sring
    DBMS_OUTPUT.PUT_LINE(msg || ' ' || 'friend of Ram');
END;