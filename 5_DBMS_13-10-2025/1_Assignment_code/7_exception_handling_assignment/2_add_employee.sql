drop procedure if exists add_employee;

delimiter //
create procedure add_employee(in name varchar(50), in sal decimal(10, 2), in d_id int)
begin
	declare exit handler for 1062
    begin
		select 'employee already exists' as message;
    end;
	insert into employees(emp_name, salary, dept_id)
    value (name, sal, d_id);
    select 'employee added successfully' as message;
end //

delimiter ;

call add_employee('Vinod', 43000, 1);

select * from departments;
select * from employees;