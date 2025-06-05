declare 
    eid int;
    ename VARCHAR(20);
begin
    eid :=100;
    ename :='Ashu';

    dbms_output.put_line('id -> '|| eid);
    dbms_output.put_line('name -> '|| ename);
end;


 --     %Type

 set SERVEROUTPUT on;

 DECLARE
    eid int :=102;
    vname hr.employees.first_name%TYPE;

BEGIN
    SELECT first_name into vname from employees where EMPLOYEE_ID=eid;
    DBMS_OUTPUT.PUT_LINE(eid || ' -> '|| vname);
end;


 --     %rowType

 set SERVEROUTPUT on;

 DECLARE
    eid int :=103;
    vname hr.employees.first_name%TYPE;
    emp_rec hr.employees%rowType;

BEGIN
    SELECT * into emp_rec from employees where EMPLOYEE_ID=eid;
    DBMS_OUTPUT.PUT_LINE(emp_rec.first_name || ' -> '|| emp_rec.last_name);
end;


-- inplicit cursor 
--      in inplicit cursor we have inplicit attribute

create table test(id int);
-- insert into test values(30,20);  -- Return Error
insert into test values(10);
insert into test values(20);
insert into test values(30);

-- cursor

DECLARE
    v_count int :=0;

BEGIN
    SELECT count(*) into v_count from hr.TEST where id>10;
    if SQL%found THEN
        DBMS_OUTPUT.PUT_LINE('helo');
    end if;
END;
 
 
-- updateing values
 --sql%rowcount

DECLARE
    v_count int :=0;
BEGIN
    if SQL%found THEN
        DBMS_OUTPUT.PUT_LINE('cursor open 1 '|| '-> ' || sql%rowcount);
    end if;
    update hr.test
    set id=50;
    if SQL%found THEN
        DBMS_OUTPUT.PUT_LINE('cursor open 2 '|| '-> ' || sql%rowcount);
    end if;
END;


--sql%isopen

DECLARE
    v_count int :=0;
BEGIN
    if SQL%found THEN
        DBMS_OUTPUT.PUT_LINE('cursor open 1 '|| '-> ' || sql%rowcount);
    end if;
    update hr.test
    set id=50;
    if SQL%found THEN
        DBMS_OUTPUT.PUT_LINE('cursor open 2 '|| '-> ' || sql%open);
    end if;
END;

--sql

DECLARE
    v_count int :=0;
BEGIN
    insert into hr.test values(10);
    v_count:=v_count+sql%rowcount;
    insert into hr.test values(20);
    v_count:=v_count+sql%rowcount;
    insert into hr.test values(30);
    v_count:=v_count+sql%rowcount;
    if SQL%found THEN
        DBMS_OUTPUT.PUT_LINE('total Value inserted '|| '-> ' || v_count);
    else
        DBMS_OUTPUT.PUT_LINE('No data inserted');
    end if;
END;
select * from hr.test;